import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/app/router/router.gr.dart';
import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/screens/blocs/character_bloc/character_bloc.dart';
import 'package:harry_potter/widgets/widgets.dart';

class CharacterStatisticTile extends StatelessWidget {
  const CharacterStatisticTile({
    super.key,
    required this.statistic,
  });

  final GuessStatistics statistic;

  @override
  Widget build(BuildContext context) {
    final GuessStatistics(
      :beforeFirstSuccessCount,
      :isGuessed,
      :total,
    ) = statistic;

    final character = statistic.character;

    final Character(
      :id,
      :name,
      image: imageUrl,
    ) = character;

    return ListTile(
      leading: HogwartsCharacterAvatar(
        character: character,
      ),
      title: Text(name),
      subtitle: Text('Attempts: ${beforeFirstSuccessCount ?? total}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isGuessed)
            IconButton(
              onPressed: () {
                context.read<CharacterBloc>().loadSpecificCharacter(id: id);

                context.navigateTo(
                  HomeRouter(
                    children: [
                      HomeRoute(),
                    ],
                  ),
                );
              },
              icon: Icon(Icons.replay_outlined),
            ),
          Icon(
            isGuessed ? Icons.check : Icons.close,
            color: isGuessed ? Colors.green : Colors.red,
          ),
        ],
      ),
      onTap: () {
        context.pushRoute(
          CharacterInfoRoute(
            id: id,
            character: character,
            isAccessRestricted: !statistic.isGuessed,
          ),
        );
      },
    );
  }
}
