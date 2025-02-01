import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:harry_potter/models/character/character.dart';
import 'package:harry_potter/models/guess_statistics/guess_statistics.dart';

part 'guess_character_house_event.dart';
part 'guess_character_house_state.dart';
part 'guess_character_house_bloc.freezed.dart';

@lazySingleton
class GuessCharacterHouseBloc
    extends Bloc<GuessCharacterHouseEvent, GuessCharacterHouseState> {
  GuessCharacterHouseBloc() : super(_GuessCharacterHouseState()) {
    on<_GuessCharacterHouse>(_onGuessCharacterHouse);
    on<_ResetStatistic>(_onResetStatistic);
    on<_SearchCharacterStatistic>(_onSearchCharacterStatistic);
  }

  GuessStatistics get totalGuessesStatistics {
    if (state.guessesStatistics.isEmpty) {
      return GuessStatistics();
    }
    return state.guessesStatistics.reduce((latest, guessStatistics) {
      return GuessStatistics(
        successCount: latest.successCount + guessStatistics.successCount,
        failureCount: latest.failureCount + guessStatistics.failureCount,
      );
    });
  }

  GuessCharacterHouseState onStateChanged(GuessCharacterHouseState state) {
    var visibleData = state.guessesStatistics;

    final searchQuery = state.searchQuery;

    if (searchQuery.isNotEmpty) {
      final regExp = RegExp(
        searchQuery,
        caseSensitive: false,
      );

      visibleData = state.guessesStatistics
          .where((statistic) => regExp.hasMatch(statistic.character.name))
          .toList();
    }

    return state.copyWith(visibleGuessesStatistics: visibleData);
  }

  void guessHouse({
    required Character character,
    required HogwartsHouse? house,
  }) =>
      add(_GuessCharacterHouse(
        character,
        house,
      ));
  void resetStatistic() => add(_ResetStatistic());
  void searchStatisticByName(String characterName) =>
      add(_SearchCharacterStatistic(characterName));

  void _onGuessCharacterHouse(
    _GuessCharacterHouse event,
    Emitter<GuessCharacterHouseState> emit,
  ) {
    final updatedStatistics = state.guessesStatistics.toList();

    // Find existing character statistics
    var index = updatedStatistics.indexWhere(
      (stats) => stats.character.id == event.character.id,
    );

    // If not found, add new entry
    if (index == -1) {
      updatedStatistics.add(GuessStatistics(character: event.character));
      index = updatedStatistics.length - 1;
    }

    final currentStats = updatedStatistics[index];

    // Determine if the guess was successful
    final isSuccess = _isGuessSuccessful(event.character.house, event.house);

    updatedStatistics[index] = currentStats.copyWith(
      successCount:
          isSuccess ? currentStats.successCount + 1 : currentStats.successCount,
      failureCount:
          isSuccess ? currentStats.failureCount : currentStats.failureCount + 1,
      beforeFirstSuccessCount:
          isSuccess && currentStats.beforeFirstSuccessCount == null
              ? currentStats.total
              : currentStats.beforeFirstSuccessCount,
    );

    // Emit updated state
    emit(onStateChanged(state.copyWith(
      guessesStatistics: updatedStatistics,
    )));
  }

  bool _isGuessSuccessful(
    HogwartsHouse? characterHouse,
    HogwartsHouse? selectedHouse,
  ) =>
      characterHouse == selectedHouse;

  void _onResetStatistic(
    _ResetStatistic event,
    Emitter<GuessCharacterHouseState> emit,
  ) {
    emit(GuessCharacterHouseState());
  }

  void _onSearchCharacterStatistic(
    _SearchCharacterStatistic event,
    Emitter<GuessCharacterHouseState> emit,
  ) {
    emit(onStateChanged(
      state.copyWith(
        searchQuery: event.characterName,
      ),
    ));
  }
}
