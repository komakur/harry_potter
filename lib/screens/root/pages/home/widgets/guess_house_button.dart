import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/screens/blocs/blocs.dart';

class GuessHouseButton extends StatelessWidget {
  const GuessHouseButton({
    super.key,
    required this.houseName,
  });

  final HogwartsHouse? houseName;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final characterBloc = context.read<CharacterBloc>();
    final guessCharacterBloc = context.read<GuessCharacterHouseBloc>();

    final effectiveHouseName = houseName != null
        ? '${houseName!.name[0].toUpperCase()}${houseName!.name.substring(1)}'
        : 'Not in a House';

    return GestureDetector(
      onTap: () {
        final character = characterBloc.state.character;

        guessCharacterBloc.guessHouse(
          character: character,
          house: houseName,
        );
      },
      child: Container(
        width: 200,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (houseName != null)
              SizedBox.square(
                dimension: 50,
                child: houseName!.image,
              ),
            Text(
              effectiveHouseName,
              style: textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
