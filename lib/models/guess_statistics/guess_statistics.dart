import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:harry_potter/models/models.dart';

part 'guess_statistics.freezed.dart';

@freezed
class GuessStatistics with _$GuessStatistics {
  const GuessStatistics._();

  const factory GuessStatistics({
    @Default(0) int successCount,
    @Default(0) int failureCount,
    int? beforeFirstSuccessCount,
    @Default(Character()) Character character,
  }) = _GuessStatistics;

  int get total => successCount + failureCount;

  bool get isGuessed => successCount > 0;
}
