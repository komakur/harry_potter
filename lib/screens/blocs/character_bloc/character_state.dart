part of 'character_bloc.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default(NetworkBlocStatus.initial) NetworkBlocStatus status,
    @Default(Character()) Character character,
  }) = _CharacterState;
}
