// ignore_for_file: invalid_annotation_target

import 'package:flutter/widgets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'package:harry_potter/styles/assets.gen.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    @Default('') String id,
    @Default('') String name,
    @Default('') String species,
    @JsonKey(fromJson: Character._hogwartsHouseFromJson) HogwartsHouse? house,
    @JsonKey(fromJson: Character._dateOfBirthFromJson) DateTime? dateOfBirth,
    @Default(false) bool hogwartsStudent,
    @Default(false) bool hogwartsStaff,
    @Default('') String image,
    @Default('') String actor,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  static DateTime? _dateOfBirthFromJson(String? data) {
    final format = DateFormat("dd-MM-yyyy");

    return format.tryParse(data ?? '');
  }

  static HogwartsHouse? _hogwartsHouseFromJson(String? data) {
    return HogwartsHouse.fromString(data);
  }
}

enum HogwartsHouse {
  gryffindor,
  slytherin,
  ravenclaw,
  hufflepuff;

  static HogwartsHouse? fromString(String? houseName) {
    return switch (houseName) {
      'Gryffindor' => gryffindor,
      'Slytherin' => slytherin,
      'Ravenclaw' => ravenclaw,
      'Hufflepuff' => hufflepuff,
      _ => null,
    };
  }

  Widget get image {
    return switch (this) {
      gryffindor => Assets.images.gryffindor.image(),
      slytherin => Assets.images.slytherin.image(),
      ravenclaw => Assets.images.ravenclaw.image(),
      hufflepuff => Assets.images.hufflepuff.image(),
    };
  }
}
