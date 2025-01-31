import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:harry_potter/injector/injector.dart';
import 'package:harry_potter/services/logger/observers/bloc_observer.dart';

void initializeApp() {
  _initializeBlocObserver();

  configureDependencies();
}

void _initializeBlocObserver() {
  Bloc.observer = SimpleBlocObserver();
}
