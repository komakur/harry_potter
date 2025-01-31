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
    final oldStatistics = state.guessesStatistics.toList();

    var particularCharacterStatisticsIndex = oldStatistics.indexWhere(
      (statistics) => statistics.character.id == event.character.id,
    );

    final statisticsExists = particularCharacterStatisticsIndex != -1;

    if (!statisticsExists) {
      oldStatistics.add(GuessStatistics(character: event.character));

      particularCharacterStatisticsIndex = oldStatistics.length - 1;
    }

    final particularCharacterStatistics =
        oldStatistics[particularCharacterStatisticsIndex];

    // guess is successful
    if (_isGuessSuccessful(event.character.house, event.house)) {
      oldStatistics[particularCharacterStatisticsIndex] =
          particularCharacterStatistics
              .copyWith(
                successCount: particularCharacterStatistics.successCount + 1,
              )
              .copyWith(
                beforeFirstSuccessCount:
                    particularCharacterStatistics.beforeFirstSuccessCount ??
                        particularCharacterStatistics.total,
              );
    } // guess is failed
    else {
      oldStatistics[particularCharacterStatisticsIndex] =
          particularCharacterStatistics.copyWith(
        failureCount: particularCharacterStatistics.failureCount + 1,
      );
    }

    print(oldStatistics[particularCharacterStatisticsIndex]);
    emit(state.copyWith(guessesStatistics: oldStatistics));
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
    final regExp = RegExp(
      event.characterName,
      caseSensitive: false,
    );

    var searchedStatistic = state.guessesStatistics
        .where((statistic) => regExp.hasMatch(statistic.character.name))
        .toList();

    if (event.characterName.isEmpty) {
      searchedStatistic = state.guessesStatistics;
    }

    emit(
      state.copyWith(
        searchQuery: event.characterName,
        visibleGuessesStatistics: searchedStatistic,
      ),
    );
  }
}
