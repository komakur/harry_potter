import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'home_state_wrapper.dart';

@RoutePage(name: 'HomeRouter')
class HomeRouteWrapperScreen extends StatelessWidget {
  const HomeRouteWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeStateWrapper(
      child: AutoRouter(),
    );
  }
}
