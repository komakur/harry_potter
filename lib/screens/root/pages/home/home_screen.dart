import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/screens/blocs/character_bloc/character_bloc.dart';
import 'package:harry_potter/screens/blocs/guess_character_house_bloc/guess_character_house_bloc.dart';
import 'widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final characterBloc = context.read<CharacterBloc>();
    final guessHouseBloc = context.read<GuessCharacterHouseBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
        ),
        actions: [
          TextButton(
            onPressed: () {
              guessHouseBloc.resetStatistic();
            },
            child: Text('Reset'),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          characterBloc.load();
        },
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 8),
          children: [
            BlocBuilder<GuessCharacterHouseBloc, GuessCharacterHouseState>(
              builder: (context, state) {
                final totalStatistics = guessHouseBloc.totalGuessesStatistics;

                return TotalGuessStatisticTile(
                  totalStatistics: totalStatistics,
                );
              },
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 320,
              child: BlocBuilder<CharacterBloc, CharacterState>(
                builder: (context, state) {
                  if (state.status.isLoading || state.status.isInitial) {
                    return Center(child: CircularProgressIndicator());
                  }

                  final character = state.character;

                  return Center(
                    child: CharacterCard(
                      character: character,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      GuessHouseButton(
                        houseName: HogwartsHouse.gryffindor,
                      ),
                      GuessHouseButton(
                        houseName: HogwartsHouse.slytherin,
                      ),
                      GuessHouseButton(
                        houseName: HogwartsHouse.ravenclaw,
                      ),
                      GuessHouseButton(
                        houseName: HogwartsHouse.hufflepuff,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: GuessHouseButton(
                    houseName: null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
