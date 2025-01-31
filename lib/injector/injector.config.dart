// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'package:harry_potter/repositories/characters_repository.dart' as _i979;
import 'package:harry_potter/repositories/repositories.dart' as _i392;
import 'package:harry_potter/services/http_client/http_client.dart' as _i237;

import 'package:harry_potter/screens/blocs/character_bloc/character_bloc.dart'
    as _i21;
import 'package:harry_potter/screens/blocs/guess_character_house_bloc/guess_character_house_bloc.dart'
    as _i589;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i237.HttpClient>(() => _i237.HttpClient());
    gh.lazySingleton<_i589.GuessCharacterHouseBloc>(
        () => _i589.GuessCharacterHouseBloc());
    gh.factory<_i979.CharactersRepository>(
        () => _i979.CharactersRepository(gh<_i237.HttpClient>()));
    gh.lazySingleton<_i21.CharacterBloc>(
        () => _i21.CharacterBloc(gh<_i392.CharactersRepository>()));
    return this;
  }
}
