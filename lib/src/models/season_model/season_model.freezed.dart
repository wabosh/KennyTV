// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'season_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  String get url => throw _privateConstructorUsedError;
  String get shortId => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get seasonId => throw _privateConstructorUsedError;
  String get encodedSeasonId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {String url,
      String shortId,
      int number,
      String seasonId,
      String encodedSeasonId});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? shortId = null,
    Object? number = null,
    Object? seasonId = null,
    Object? encodedSeasonId = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      shortId: null == shortId
          ? _value.shortId
          : shortId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      seasonId: null == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String,
      encodedSeasonId: null == encodedSeasonId
          ? _value.encodedSeasonId
          : encodedSeasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
          _$SeasonImpl value, $Res Function(_$SeasonImpl) then) =
      __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      String shortId,
      int number,
      String seasonId,
      String encodedSeasonId});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
      _$SeasonImpl _value, $Res Function(_$SeasonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? shortId = null,
    Object? number = null,
    Object? seasonId = null,
    Object? encodedSeasonId = null,
  }) {
    return _then(_$SeasonImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      shortId: null == shortId
          ? _value.shortId
          : shortId // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      seasonId: null == seasonId
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String,
      encodedSeasonId: null == encodedSeasonId
          ? _value.encodedSeasonId
          : encodedSeasonId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonImpl implements _Season {
  _$SeasonImpl(
      {required this.url,
      required this.shortId,
      required this.number,
      required this.seasonId,
      required this.encodedSeasonId});

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  final String url;
  @override
  final String shortId;
  @override
  final int number;
  @override
  final String seasonId;
  @override
  final String encodedSeasonId;

  @override
  String toString() {
    return 'Season(url: $url, shortId: $shortId, number: $number, seasonId: $seasonId, encodedSeasonId: $encodedSeasonId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.shortId, shortId) || other.shortId == shortId) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.seasonId, seasonId) ||
                other.seasonId == seasonId) &&
            (identical(other.encodedSeasonId, encodedSeasonId) ||
                other.encodedSeasonId == encodedSeasonId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, shortId, number, seasonId, encodedSeasonId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  factory _Season(
      {required final String url,
      required final String shortId,
      required final int number,
      required final String seasonId,
      required final String encodedSeasonId}) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  String get url;
  @override
  String get shortId;
  @override
  int get number;
  @override
  String get seasonId;
  @override
  String get encodedSeasonId;
  @override
  @JsonKey(ignore: true)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
