import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage(name: 'CharactersRouter')
class CharactersRouteWrapperScreen extends StatelessWidget {
  const CharactersRouteWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter();
  }
}
