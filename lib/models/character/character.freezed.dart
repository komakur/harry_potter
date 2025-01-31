// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Character._hogwartsHouseFromJson)
  HogwartsHouse? get house => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Character._dateOfBirthFromJson)
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  bool get hogwartsStudent => throw _privateConstructorUsedError;
  bool get hogwartsStaff => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get actor => throw _privateConstructorUsedError;

  /// Serializes this Character to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res, Character>;
  @useResult
  $Res call(
      {String id,
      String name,
      String species,
      @JsonKey(fromJson: Character._hogwartsHouseFromJson) HogwartsHouse? house,
      @JsonKey(fromJson: Character._dateOfBirthFromJson) DateTime? dateOfBirth,
      bool hogwartsStudent,
      bool hogwartsStaff,
      String image,
      String actor});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res, $Val extends Character>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? hogwartsStudent = null,
    Object? hogwartsStaff = null,
    Object? image = null,
    Object? actor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as HogwartsHouse?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hogwartsStudent: null == hogwartsStudent
          ? _value.hogwartsStudent
          : hogwartsStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      hogwartsStaff: null == hogwartsStaff
          ? _value.hogwartsStaff
          : hogwartsStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterImplCopyWith<$Res>
    implements $CharacterCopyWith<$Res> {
  factory _$$CharacterImplCopyWith(
          _$CharacterImpl value, $Res Function(_$CharacterImpl) then) =
      __$$CharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String species,
      @JsonKey(fromJson: Character._hogwartsHouseFromJson) HogwartsHouse? house,
      @JsonKey(fromJson: Character._dateOfBirthFromJson) DateTime? dateOfBirth,
      bool hogwartsStudent,
      bool hogwartsStaff,
      String image,
      String actor});
}

/// @nodoc
class __$$CharacterImplCopyWithImpl<$Res>
    extends _$CharacterCopyWithImpl<$Res, _$CharacterImpl>
    implements _$$CharacterImplCopyWith<$Res> {
  __$$CharacterImplCopyWithImpl(
      _$CharacterImpl _value, $Res Function(_$CharacterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? species = null,
    Object? house = freezed,
    Object? dateOfBirth = freezed,
    Object? hogwartsStudent = null,
    Object? hogwartsStaff = null,
    Object? image = null,
    Object? actor = null,
  }) {
    return _then(_$CharacterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      house: freezed == house
          ? _value.house
          : house // ignore: cast_nullable_to_non_nullable
              as HogwartsHouse?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hogwartsStudent: null == hogwartsStudent
          ? _value.hogwartsStudent
          : hogwartsStudent // ignore: cast_nullable_to_non_nullable
              as bool,
      hogwartsStaff: null == hogwartsStaff
          ? _value.hogwartsStaff
          : hogwartsStaff // ignore: cast_nullable_to_non_nullable
              as bool,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      actor: null == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterImpl implements _Character {
  const _$CharacterImpl(
      {this.id = '',
      this.name = '',
      this.species = '',
      @JsonKey(fromJson: Character._hogwartsHouseFromJson) this.house,
      @JsonKey(fromJson: Character._dateOfBirthFromJson) this.dateOfBirth,
      this.hogwartsStudent = false,
      this.hogwartsStaff = false,
      this.image = '',
      this.actor = ''});

  factory _$CharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String species;
  @override
  @JsonKey(fromJson: Character._hogwartsHouseFromJson)
  final HogwartsHouse? house;
  @override
  @JsonKey(fromJson: Character._dateOfBirthFromJson)
  final DateTime? dateOfBirth;
  @override
  @JsonKey()
  final bool hogwartsStudent;
  @override
  @JsonKey()
  final bool hogwartsStaff;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String actor;

  @override
  String toString() {
    return 'Character(id: $id, name: $name, species: $species, house: $house, dateOfBirth: $dateOfBirth, hogwartsStudent: $hogwartsStudent, hogwartsStaff: $hogwartsStaff, image: $image, actor: $actor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.house, house) || other.house == house) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.hogwartsStudent, hogwartsStudent) ||
                other.hogwartsStudent == hogwartsStudent) &&
            (identical(other.hogwartsStaff, hogwartsStaff) ||
                other.hogwartsStaff == hogwartsStaff) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.actor, actor) || other.actor == actor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, species, house,
      dateOfBirth, hogwartsStudent, hogwartsStaff, image, actor);

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      __$$CharacterImplCopyWithImpl<_$CharacterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterImplToJson(
      this,
    );
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {final String id,
      final String name,
      final String species,
      @JsonKey(fromJson: Character._hogwartsHouseFromJson)
      final HogwartsHouse? house,
      @JsonKey(fromJson: Character._dateOfBirthFromJson)
      final DateTime? dateOfBirth,
      final bool hogwartsStudent,
      final bool hogwartsStaff,
      final String image,
      final String actor}) = _$CharacterImpl;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$CharacterImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get species;
  @override
  @JsonKey(fromJson: Character._hogwartsHouseFromJson)
  HogwartsHouse? get house;
  @override
  @JsonKey(fromJson: Character._dateOfBirthFromJson)
  DateTime? get dateOfBirth;
  @override
  bool get hogwartsStudent;
  @override
  bool get hogwartsStaff;
  @override
  String get image;
  @override
  String get actor;

  /// Create a copy of Character
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterImplCopyWith<_$CharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
