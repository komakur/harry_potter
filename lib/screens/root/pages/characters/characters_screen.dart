import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/screens/blocs/guess_character_house_bloc/guess_character_house_bloc.dart';
import 'widgets/character_statistic_tile.dart';

@RoutePage()
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    final guessCharacterBloc = context.read<GuessCharacterHouseBloc>();

    _searchController = TextEditingController(
      text: guessCharacterBloc.state.searchQuery,
    )..addListener(
        () {
          guessCharacterBloc
              .searchStatisticByName(_searchController.value.text);
        },
      );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 360),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search by name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<GuessCharacterHouseBloc>()
                      .searchStatisticByName(value);
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<GuessCharacterHouseBloc,
                  GuessCharacterHouseState>(
                builder: (context, state) {
                  final charactersStatistic = state.searchQuery.isEmpty
                      ? state.guessesStatistics
                      : state.visibleGuessesStatistics;

                  if (charactersStatistic.isEmpty) {
                    if (state.searchQuery.isNotEmpty) {
                      return Center(
                        child: Text('No statistic found'),
                      );
                    }
                    return Center(
                      child: Text('Nothing to show yet'),
                    );
                  }

                  return ListView.builder(
                    itemCount: charactersStatistic.length,
                    itemBuilder: (context, index) {
                      final characterStatistic = charactersStatistic[index];

                      return CharacterStatisticTile(
                        statistic: characterStatistic,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
