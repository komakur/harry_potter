import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/injector/injector.dart';
import 'package:harry_potter/screens/blocs/character_bloc/character_bloc.dart';
import 'package:harry_potter/screens/blocs/guess_character_house_bloc/guess_character_house_bloc.dart';

class RootStateWrapper extends StatelessWidget {
  const RootStateWrapper({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CharacterBloc>()..load(),
        ),
        BlocProvider(
          create: (context) => getIt<GuessCharacterHouseBloc>(),
        ),
      ],
      child: child,
    );
  }
}
