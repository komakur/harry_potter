// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:flutter/material.dart' as _i8;

import 'package:auto_route/auto_route.dart' as _i7;

import 'package:harry_potter/models/models.dart' as _i9;
import 'package:harry_potter/screens/root/pages/home/home_screen.dart' as _i5;
import 'package:harry_potter/screens/root_screen.dart' as _i6;

import 'package:harry_potter/screens/root/pages/characters/characters_route_wrapper.dart'
    as _i2;
import 'package:harry_potter/screens/root/pages/characters/characters_screen.dart'
    as _i3;
import 'package:harry_potter/screens/root/pages/characters/pages/character_info_screen.dart'
    as _i1;
import 'package:harry_potter/screens/root/pages/home/home_route_wrapper.dart'
    as _i4;

/// generated route for
/// [_i1.CharacterInfoScreen]
class CharacterInfoRoute extends _i7.PageRouteInfo<CharacterInfoRouteArgs> {
  CharacterInfoRoute({
    _i8.Key? key,
    required String id,
    required _i9.Character character,
    bool isAccessRestricted = true,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          CharacterInfoRoute.name,
          args: CharacterInfoRouteArgs(
            key: key,
            id: id,
            character: character,
            isAccessRestricted: isAccessRestricted,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CharacterInfoRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CharacterInfoRouteArgs>();
      return _i1.CharacterInfoScreen(
        key: args.key,
        id: args.id,
        character: args.character,
        isAccessRestricted: args.isAccessRestricted,
      );
    },
  );
}

class CharacterInfoRouteArgs {
  const CharacterInfoRouteArgs({
    this.key,
    required this.id,
    required this.character,
    this.isAccessRestricted = true,
  });

  final _i8.Key? key;

  final String id;

  final _i9.Character character;

  final bool isAccessRestricted;

  @override
  String toString() {
    return 'CharacterInfoRouteArgs{key: $key, id: $id, character: $character, isAccessRestricted: $isAccessRestricted}';
  }
}

/// generated route for
/// [_i2.CharactersRouteWrapperScreen]
class CharactersRouter extends _i7.PageRouteInfo<void> {
  const CharactersRouter({List<_i7.PageRouteInfo>? children})
      : super(
          CharactersRouter.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRouter';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.CharactersRouteWrapperScreen();
    },
  );
}

/// generated route for
/// [_i3.CharactersScreen]
class CharactersRoute extends _i7.PageRouteInfo<void> {
  const CharactersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CharactersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CharactersRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.CharactersScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeRouteWrapperScreen]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeRouteWrapperScreen();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.RootScreen]
class RootRoute extends _i7.PageRouteInfo<void> {
  const RootRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.RootScreen();
    },
  );
}
