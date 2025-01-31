// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      species: json['species'] as String? ?? '',
      house: Character._hogwartsHouseFromJson(json['house'] as String?),
      dateOfBirth:
          Character._dateOfBirthFromJson(json['dateOfBirth'] as String?),
      hogwartsStudent: json['hogwartsStudent'] as bool? ?? false,
      hogwartsStaff: json['hogwartsStaff'] as bool? ?? false,
      image: json['image'] as String? ?? '',
      actor: json['actor'] as String? ?? '',
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'species': instance.species,
      'house': _$HogwartsHouseEnumMap[instance.house],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'hogwartsStudent': instance.hogwartsStudent,
      'hogwartsStaff': instance.hogwartsStaff,
      'image': instance.image,
      'actor': instance.actor,
    };

const _$HogwartsHouseEnumMap = {
  HogwartsHouse.gryffindor: 'gryffindor',
  HogwartsHouse.slytherin: 'slytherin',
  HogwartsHouse.ravenclaw: 'ravenclaw',
  HogwartsHouse.hufflepuff: 'hufflepuff',
};
