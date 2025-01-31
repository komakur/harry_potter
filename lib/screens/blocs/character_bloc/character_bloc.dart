import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/repositories/repositories.dart';

part 'character_event.dart';
part 'character_state.dart';
part 'character_bloc.freezed.dart';

@lazySingleton
class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  final CharactersRepository _charactersRepository;

  static final _random = Random();

  CharacterBloc(this._charactersRepository) : super(_CharacterState()) {
    on<_Load>(_onLoadEvent);
    on<_LoadSpecific>(_onLoadSpecificCharacter);
  }

  void load() => add(_Load());
  void loadSpecificCharacter({required String id}) =>
      add(_LoadSpecific(id: id));

  Future<CharacterState> getAsync() {
    return stream.firstWhere((state) => !state.status.isLoading);
  }

  Future<void> _onLoadEvent(
    _Load event,
    Emitter<CharacterState> emit,
  ) async {
    emit(state.copyWith(status: NetworkBlocStatus.loading));
    try {
      final characters = await _charactersRepository.getAllCharacters();

      final randomCharacter = characters[_random.nextInt(characters.length)];
      print(randomCharacter);

      emit(state.copyWith(
        character: randomCharacter,
        status: NetworkBlocStatus.success,
      ));
    } catch (error, stackTrace) {
      addError(error, stackTrace);

      emit(state.copyWith(status: NetworkBlocStatus.failure));
    }
  }

  Future<void> _onLoadSpecificCharacter(
    _LoadSpecific event,
    Emitter<CharacterState> emit,
  ) async {
    emit(state.copyWith(status: NetworkBlocStatus.loading));

    try {
      final character = await _charactersRepository.getCharacter(event.id);

      emit(state.copyWith(
        character: character,
        status: NetworkBlocStatus.success,
      ));
    } catch (error, stackTrace) {
      addError(error, stackTrace);

      emit(state.copyWith(status: NetworkBlocStatus.failure));
    }
  }
}
