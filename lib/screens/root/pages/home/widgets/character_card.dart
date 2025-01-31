import 'package:flutter/material.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/widgets/widgets.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    final Character(
      :id,
      :name,
      image: imageUrl,
    ) = character;

    return SizedBox(
      width: double.maxFinite,
      height: 300,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: CustomCachedNetworkImage(
              width: 200,
              height: 260,
              imageUrl: imageUrl,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                name,
                style: textTheme.headlineSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
