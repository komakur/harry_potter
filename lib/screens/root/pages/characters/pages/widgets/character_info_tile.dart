import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/widgets/widgets.dart';

class CharacterInfoTile extends StatelessWidget {
  const CharacterInfoTile({
    super.key,
    required this.character,
    this.isAccessRestricted = true,
  });

  final Character character;
  final bool isAccessRestricted;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final Character(
      :house,
      :dateOfBirth,
      :actor,
      :species,
      image: imageUrl,
    ) = character;

    final effectiveDateOfBirth = dateOfBirth != null
        ? DateFormat(DateFormat.YEAR_MONTH_DAY).format(character.dateOfBirth!)
        : '';

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            CustomCachedNetworkImage(
              imageUrl: imageUrl,
              width: 90,
              height: 100,
            ),
            if (!isAccessRestricted)
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _CharacterInfoTileItem(
                      label: 'House',
                      value: character.house?.name ?? '',
                    ),
                    _CharacterInfoTileItem(
                      label: 'Date of birth',
                      value: effectiveDateOfBirth,
                    ),
                    _CharacterInfoTileItem(
                      label: 'Actor',
                      value: actor,
                    ),
                    _CharacterInfoTileItem(
                      label: 'Species',
                      value: species,
                    ),
                  ],
                ),
              )
            else
              Expanded(
                child: Text(
                  'Access denied',
                  style: textTheme.headlineMedium?.copyWith(color: Colors.red),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

class _CharacterInfoTileItem extends StatelessWidget {
  const _CharacterInfoTileItem({
    required this.label,
    required this.value,
    this.emptyValue = '-',
  });

  final String label;
  final String value;

  final String emptyValue;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$label: ',
            style: textTheme.bodyLarge,
          ),
          TextSpan(
            text: value.isEmpty ? emptyValue : value,
            style: textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
