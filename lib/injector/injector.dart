import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:harry_potter/app/router/router.dart';
import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  asExtension: true,
  initializerName: 'init',
)
void configureDependencies() {
  getIt
    ..registerSingleton(AppRouter())
    ..init();
}
