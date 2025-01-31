part of 'guess_character_house_bloc.dart';

@freezed
class GuessCharacterHouseEvent with _$GuessCharacterHouseEvent {
  const factory GuessCharacterHouseEvent.initialize() = _Initialize;
  const factory GuessCharacterHouseEvent.guessCharacterHouse(
    Character character,
    HogwartsHouse? house,
  ) = _GuessCharacterHouse;

  const factory GuessCharacterHouseEvent.resetStatistic() = _ResetStatistic;

  const factory GuessCharacterHouseEvent.searchCharacterStatistic(
      String characterName) = _SearchCharacterStatistic;
}
