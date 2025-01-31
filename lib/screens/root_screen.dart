import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:harry_potter/app/router/router.gr.dart';
import 'package:harry_potter/screens/root_state_wrapper.dart';
import 'package:harry_potter/widgets/nav_scaffold.dart';

@RoutePage()
class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RootStateWrapper(
      child: NavScaffold(
        tabs: [
          NavigationTab(
            route: HomeRoute(),
            icon: Icons.home,
            label: 'Home',
          ),
          NavigationTab(
            route: CharactersRoute(),
            icon: Icons.list,
            label: 'List',
          ),
        ],
      ),
    );
  }
}
