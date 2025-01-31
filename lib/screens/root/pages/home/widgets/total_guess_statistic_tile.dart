import 'package:flutter/material.dart';

import 'package:harry_potter/models/models.dart';

class TotalGuessStatisticTile extends StatelessWidget {
  const TotalGuessStatisticTile({
    super.key,
    required this.totalStatistics,
  });

  final GuessStatistics totalStatistics;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        _GuessStatisticWidget(
          label: 'Total',
          guessesCount: totalStatistics.total,
        ),
        _GuessStatisticWidget(
          label: 'Success',
          guessesCount: totalStatistics.successCount,
        ),
        _GuessStatisticWidget(
          label: 'Failed',
          guessesCount: totalStatistics.failureCount,
        ),
      ],
    );
  }
}

class _GuessStatisticWidget extends StatelessWidget {
  const _GuessStatisticWidget({
    required this.label,
    required this.guessesCount,
  });

  final String label;
  final int guessesCount;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: textTheme.titleLarge,
          ),
          Text(
            '$guessesCount',
            style: textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
