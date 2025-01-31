import 'package:flutter/material.dart';

import 'package:harry_potter/app/router/router.dart';
import 'package:harry_potter/injector/injector.dart';

class HarryPotterApp extends StatefulWidget {
  const HarryPotterApp({super.key});

  @override
  State<HarryPotterApp> createState() => _HarryPotterAppState();
}

class _HarryPotterAppState extends State<HarryPotterApp> {
  final appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
