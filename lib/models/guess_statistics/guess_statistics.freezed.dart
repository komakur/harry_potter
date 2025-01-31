// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guess_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuessStatistics {
  int get successCount => throw _privateConstructorUsedError;
  int get failureCount => throw _privateConstructorUsedError;
  int? get beforeFirstSuccessCount => throw _privateConstructorUsedError;
  Character get character => throw _privateConstructorUsedError;

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuessStatisticsCopyWith<GuessStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessStatisticsCopyWith<$Res> {
  factory $GuessStatisticsCopyWith(
          GuessStatistics value, $Res Function(GuessStatistics) then) =
      _$GuessStatisticsCopyWithImpl<$Res, GuessStatistics>;
  @useResult
  $Res call(
      {int successCount,
      int failureCount,
      int? beforeFirstSuccessCount,
      Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class _$GuessStatisticsCopyWithImpl<$Res, $Val extends GuessStatistics>
    implements $GuessStatisticsCopyWith<$Res> {
  _$GuessStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successCount = null,
    Object? failureCount = null,
    Object? beforeFirstSuccessCount = freezed,
    Object? character = null,
  }) {
    return _then(_value.copyWith(
      successCount: null == successCount
          ? _value.successCount
          : successCount // ignore: cast_nullable_to_non_nullable
              as int,
      failureCount: null == failureCount
          ? _value.failureCount
          : failureCount // ignore: cast_nullable_to_non_nullable
              as int,
      beforeFirstSuccessCount: freezed == beforeFirstSuccessCount
          ? _value.beforeFirstSuccessCount
          : beforeFirstSuccessCount // ignore: cast_nullable_to_non_nullable
              as int?,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ) as $Val);
  }

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuessStatisticsImplCopyWith<$Res>
    implements $GuessStatisticsCopyWith<$Res> {
  factory _$$GuessStatisticsImplCopyWith(_$GuessStatisticsImpl value,
          $Res Function(_$GuessStatisticsImpl) then) =
      __$$GuessStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int successCount,
      int failureCount,
      int? beforeFirstSuccessCount,
      Character character});

  @override
  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$GuessStatisticsImplCopyWithImpl<$Res>
    extends _$GuessStatisticsCopyWithImpl<$Res, _$GuessStatisticsImpl>
    implements _$$GuessStatisticsImplCopyWith<$Res> {
  __$$GuessStatisticsImplCopyWithImpl(
      _$GuessStatisticsImpl _value, $Res Function(_$GuessStatisticsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? successCount = null,
    Object? failureCount = null,
    Object? beforeFirstSuccessCount = freezed,
    Object? character = null,
  }) {
    return _then(_$GuessStatisticsImpl(
      successCount: null == successCount
          ? _value.successCount
          : successCount // ignore: cast_nullable_to_non_nullable
              as int,
      failureCount: null == failureCount
          ? _value.failureCount
          : failureCount // ignore: cast_nullable_to_non_nullable
              as int,
      beforeFirstSuccessCount: freezed == beforeFirstSuccessCount
          ? _value.beforeFirstSuccessCount
          : beforeFirstSuccessCount // ignore: cast_nullable_to_non_nullable
              as int?,
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }
}

/// @nodoc

class _$GuessStatisticsImpl extends _GuessStatistics {
  const _$GuessStatisticsImpl(
      {this.successCount = 0,
      this.failureCount = 0,
      this.beforeFirstSuccessCount,
      this.character = const Character()})
      : super._();

  @override
  @JsonKey()
  final int successCount;
  @override
  @JsonKey()
  final int failureCount;
  @override
  final int? beforeFirstSuccessCount;
  @override
  @JsonKey()
  final Character character;

  @override
  String toString() {
    return 'GuessStatistics(successCount: $successCount, failureCount: $failureCount, beforeFirstSuccessCount: $beforeFirstSuccessCount, character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuessStatisticsImpl &&
            (identical(other.successCount, successCount) ||
                other.successCount == successCount) &&
            (identical(other.failureCount, failureCount) ||
                other.failureCount == failureCount) &&
            (identical(
                    other.beforeFirstSuccessCount, beforeFirstSuccessCount) ||
                other.beforeFirstSuccessCount == beforeFirstSuccessCount) &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, successCount, failureCount,
      beforeFirstSuccessCount, character);

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuessStatisticsImplCopyWith<_$GuessStatisticsImpl> get copyWith =>
      __$$GuessStatisticsImplCopyWithImpl<_$GuessStatisticsImpl>(
          this, _$identity);
}

abstract class _GuessStatistics extends GuessStatistics {
  const factory _GuessStatistics(
      {final int successCount,
      final int failureCount,
      final int? beforeFirstSuccessCount,
      final Character character}) = _$GuessStatisticsImpl;
  const _GuessStatistics._() : super._();

  @override
  int get successCount;
  @override
  int get failureCount;
  @override
  int? get beforeFirstSuccessCount;
  @override
  Character get character;

  /// Create a copy of GuessStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuessStatisticsImplCopyWith<_$GuessStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
