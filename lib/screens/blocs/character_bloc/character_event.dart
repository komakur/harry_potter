part of 'character_bloc.dart';

@freezed
class CharacterEvent with _$CharacterEvent {
  const factory CharacterEvent.load() = _Load;
  const factory CharacterEvent.loadSpecificCharacter({
    required String id,
  }) = _LoadSpecific;
}
