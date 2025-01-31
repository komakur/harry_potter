import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:harry_potter/models/models.dart';
import 'widgets/widgets.dart';

@RoutePage()
class CharacterInfoScreen extends StatelessWidget {
  const CharacterInfoScreen({
    super.key,
    @PathParam('id') required this.id,
    required this.character,
    this.isAccessRestricted = true,
  });

  final String id;

  final Character character;
  final bool isAccessRestricted;

  @override
  Widget build(BuildContext context) {
    final Character(
      :name,
      image: imageUrl,
      :house,
      :dateOfBirth,
      :actor,
      :species,
    ) = character;

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: CharacterInfoTile(
        character: character,
        isAccessRestricted: isAccessRestricted,
      ),
    );
  }
}
