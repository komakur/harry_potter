part of 'guess_character_house_bloc.dart';

@freezed
class GuessCharacterHouseState with _$GuessCharacterHouseState {
  const factory GuessCharacterHouseState({
    @Default([]) List<GuessStatistics> guessesStatistics,
    @Default([]) List<GuessStatistics> visibleGuessesStatistics,
    @Default('') String searchQuery,
  }) = _GuessCharacterHouseState;
}
