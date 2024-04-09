// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodeMediaImage _$EpisodeMediaImageFromJson(Map<String, dynamic> json) {
  return _EpisodeMediaImage.fromJson(json);
}

/// @nodoc
mixin _$EpisodeMediaImage {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeMediaImageCopyWith<EpisodeMediaImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeMediaImageCopyWith<$Res> {
  factory $EpisodeMediaImageCopyWith(
          EpisodeMediaImage value, $Res Function(EpisodeMediaImage) then) =
      _$EpisodeMediaImageCopyWithImpl<$Res, EpisodeMediaImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$EpisodeMediaImageCopyWithImpl<$Res, $Val extends EpisodeMediaImage>
    implements $EpisodeMediaImageCopyWith<$Res> {
  _$EpisodeMediaImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeMediaImageImplCopyWith<$Res>
    implements $EpisodeMediaImageCopyWith<$Res> {
  factory _$$EpisodeMediaImageImplCopyWith(_$EpisodeMediaImageImpl value,
          $Res Function(_$EpisodeMediaImageImpl) then) =
      __$$EpisodeMediaImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$EpisodeMediaImageImplCopyWithImpl<$Res>
    extends _$EpisodeMediaImageCopyWithImpl<$Res, _$EpisodeMediaImageImpl>
    implements _$$EpisodeMediaImageImplCopyWith<$Res> {
  __$$EpisodeMediaImageImplCopyWithImpl(_$EpisodeMediaImageImpl _value,
      $Res Function(_$EpisodeMediaImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$EpisodeMediaImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeMediaImageImpl implements _EpisodeMediaImage {
  _$EpisodeMediaImageImpl({required this.url});

  factory _$EpisodeMediaImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeMediaImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'EpisodeMediaImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeMediaImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeMediaImageImplCopyWith<_$EpisodeMediaImageImpl> get copyWith =>
      __$$EpisodeMediaImageImplCopyWithImpl<_$EpisodeMediaImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeMediaImageImplToJson(
      this,
    );
  }
}

abstract class _EpisodeMediaImage implements EpisodeMediaImage {
  factory _EpisodeMediaImage({required final String url}) =
      _$EpisodeMediaImageImpl;

  factory _EpisodeMediaImage.fromJson(Map<String, dynamic> json) =
      _$EpisodeMediaImageImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeMediaImageImplCopyWith<_$EpisodeMediaImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeMedia _$EpisodeMediaFromJson(Map<String, dynamic> json) {
  return _EpisodeMedia.fromJson(json);
}

/// @nodoc
mixin _$EpisodeMedia {
  String get duration => throw _privateConstructorUsedError;
  EpisodeMediaImage get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeMediaCopyWith<EpisodeMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeMediaCopyWith<$Res> {
  factory $EpisodeMediaCopyWith(
          EpisodeMedia value, $Res Function(EpisodeMedia) then) =
      _$EpisodeMediaCopyWithImpl<$Res, EpisodeMedia>;
  @useResult
  $Res call({String duration, EpisodeMediaImage image});

  $EpisodeMediaImageCopyWith<$Res> get image;
}

/// @nodoc
class _$EpisodeMediaCopyWithImpl<$Res, $Val extends EpisodeMedia>
    implements $EpisodeMediaCopyWith<$Res> {
  _$EpisodeMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as EpisodeMediaImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeMediaImageCopyWith<$Res> get image {
    return $EpisodeMediaImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeMediaImplCopyWith<$Res>
    implements $EpisodeMediaCopyWith<$Res> {
  factory _$$EpisodeMediaImplCopyWith(
          _$EpisodeMediaImpl value, $Res Function(_$EpisodeMediaImpl) then) =
      __$$EpisodeMediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String duration, EpisodeMediaImage image});

  @override
  $EpisodeMediaImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$EpisodeMediaImplCopyWithImpl<$Res>
    extends _$EpisodeMediaCopyWithImpl<$Res, _$EpisodeMediaImpl>
    implements _$$EpisodeMediaImplCopyWith<$Res> {
  __$$EpisodeMediaImplCopyWithImpl(
      _$EpisodeMediaImpl _value, $Res Function(_$EpisodeMediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? image = null,
  }) {
    return _then(_$EpisodeMediaImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as EpisodeMediaImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeMediaImpl implements _EpisodeMedia {
  _$EpisodeMediaImpl({required this.duration, required this.image});

  factory _$EpisodeMediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeMediaImplFromJson(json);

  @override
  final String duration;
  @override
  final EpisodeMediaImage image;

  @override
  String toString() {
    return 'EpisodeMedia(duration: $duration, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeMediaImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeMediaImplCopyWith<_$EpisodeMediaImpl> get copyWith =>
      __$$EpisodeMediaImplCopyWithImpl<_$EpisodeMediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeMediaImplToJson(
      this,
    );
  }
}

abstract class _EpisodeMedia implements EpisodeMedia {
  factory _EpisodeMedia(
      {required final String duration,
      required final EpisodeMediaImage image}) = _$EpisodeMediaImpl;

  factory _EpisodeMedia.fromJson(Map<String, dynamic> json) =
      _$EpisodeMediaImpl.fromJson;

  @override
  String get duration;
  @override
  EpisodeMediaImage get image;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeMediaImplCopyWith<_$EpisodeMediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeMeta _$EpisodeMetaFromJson(Map<String, dynamic> json) {
  return _EpisodeMeta.fromJson(json);
}

/// @nodoc
mixin _$EpisodeMeta {
  String get subHeader => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String get seasonMgid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeMetaCopyWith<EpisodeMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeMetaCopyWith<$Res> {
  factory $EpisodeMetaCopyWith(
          EpisodeMeta value, $Res Function(EpisodeMeta) then) =
      _$EpisodeMetaCopyWithImpl<$Res, EpisodeMeta>;
  @useResult
  $Res call(
      {String subHeader, String description, String date, String seasonMgid});
}

/// @nodoc
class _$EpisodeMetaCopyWithImpl<$Res, $Val extends EpisodeMeta>
    implements $EpisodeMetaCopyWith<$Res> {
  _$EpisodeMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subHeader = null,
    Object? description = null,
    Object? date = null,
    Object? seasonMgid = null,
  }) {
    return _then(_value.copyWith(
      subHeader: null == subHeader
          ? _value.subHeader
          : subHeader // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      seasonMgid: null == seasonMgid
          ? _value.seasonMgid
          : seasonMgid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeMetaImplCopyWith<$Res>
    implements $EpisodeMetaCopyWith<$Res> {
  factory _$$EpisodeMetaImplCopyWith(
          _$EpisodeMetaImpl value, $Res Function(_$EpisodeMetaImpl) then) =
      __$$EpisodeMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subHeader, String description, String date, String seasonMgid});
}

/// @nodoc
class __$$EpisodeMetaImplCopyWithImpl<$Res>
    extends _$EpisodeMetaCopyWithImpl<$Res, _$EpisodeMetaImpl>
    implements _$$EpisodeMetaImplCopyWith<$Res> {
  __$$EpisodeMetaImplCopyWithImpl(
      _$EpisodeMetaImpl _value, $Res Function(_$EpisodeMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subHeader = null,
    Object? description = null,
    Object? date = null,
    Object? seasonMgid = null,
  }) {
    return _then(_$EpisodeMetaImpl(
      subHeader: null == subHeader
          ? _value.subHeader
          : subHeader // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      seasonMgid: null == seasonMgid
          ? _value.seasonMgid
          : seasonMgid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeMetaImpl implements _EpisodeMeta {
  _$EpisodeMetaImpl(
      {required this.subHeader,
      required this.description,
      required this.date,
      required this.seasonMgid});

  factory _$EpisodeMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeMetaImplFromJson(json);

  @override
  final String subHeader;
  @override
  final String description;
  @override
  final String date;
  @override
  final String seasonMgid;

  @override
  String toString() {
    return 'EpisodeMeta(subHeader: $subHeader, description: $description, date: $date, seasonMgid: $seasonMgid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeMetaImpl &&
            (identical(other.subHeader, subHeader) ||
                other.subHeader == subHeader) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.seasonMgid, seasonMgid) ||
                other.seasonMgid == seasonMgid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subHeader, description, date, seasonMgid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeMetaImplCopyWith<_$EpisodeMetaImpl> get copyWith =>
      __$$EpisodeMetaImplCopyWithImpl<_$EpisodeMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeMetaImplToJson(
      this,
    );
  }
}

abstract class _EpisodeMeta implements EpisodeMeta {
  factory _EpisodeMeta(
      {required final String subHeader,
      required final String description,
      required final String date,
      required final String seasonMgid}) = _$EpisodeMetaImpl;

  factory _EpisodeMeta.fromJson(Map<String, dynamic> json) =
      _$EpisodeMetaImpl.fromJson;

  @override
  String get subHeader;
  @override
  String get description;
  @override
  String get date;
  @override
  String get seasonMgid;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeMetaImplCopyWith<_$EpisodeMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  String get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  EpisodeMedia get media => throw _privateConstructorUsedError;
  EpisodeMeta get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call({String id, String url, EpisodeMedia media, EpisodeMeta meta});

  $EpisodeMediaCopyWith<$Res> get media;
  $EpisodeMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? media = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as EpisodeMedia,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as EpisodeMeta,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeMediaCopyWith<$Res> get media {
    return $EpisodeMediaCopyWith<$Res>(_value.media, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodeMetaCopyWith<$Res> get meta {
    return $EpisodeMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String url, EpisodeMedia media, EpisodeMeta meta});

  @override
  $EpisodeMediaCopyWith<$Res> get media;
  @override
  $EpisodeMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? media = null,
    Object? meta = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as EpisodeMedia,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as EpisodeMeta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  _$EpisodeImpl(
      {required this.id,
      required this.url,
      required this.media,
      required this.meta});

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final EpisodeMedia media;
  @override
  final EpisodeMeta meta;

  @override
  String toString() {
    return 'Episode(id: $id, url: $url, media: $media, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, media, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  factory _Episode(
      {required final String id,
      required final String url,
      required final EpisodeMedia media,
      required final EpisodeMeta meta}) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  EpisodeMedia get media;
  @override
  EpisodeMeta get meta;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Episodes _$EpisodesFromJson(Map<String, dynamic> json) {
  return _Episodes.fromJson(json);
}

/// @nodoc
mixin _$Episodes {
  List<Episode> get episodes => throw _privateConstructorUsedError;
  Season get season => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesCopyWith<Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesCopyWith<$Res> {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) then) =
      _$EpisodesCopyWithImpl<$Res, Episodes>;
  @useResult
  $Res call({List<Episode> episodes, Season season});

  $SeasonCopyWith<$Res> get season;
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res, $Val extends Episodes>
    implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
    Object? season = null,
  }) {
    return _then(_value.copyWith(
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SeasonCopyWith<$Res> get season {
    return $SeasonCopyWith<$Res>(_value.season, (value) {
      return _then(_value.copyWith(season: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesImplCopyWith<$Res>
    implements $EpisodesCopyWith<$Res> {
  factory _$$EpisodesImplCopyWith(
          _$EpisodesImpl value, $Res Function(_$EpisodesImpl) then) =
      __$$EpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Episode> episodes, Season season});

  @override
  $SeasonCopyWith<$Res> get season;
}

/// @nodoc
class __$$EpisodesImplCopyWithImpl<$Res>
    extends _$EpisodesCopyWithImpl<$Res, _$EpisodesImpl>
    implements _$$EpisodesImplCopyWith<$Res> {
  __$$EpisodesImplCopyWithImpl(
      _$EpisodesImpl _value, $Res Function(_$EpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
    Object? season = null,
  }) {
    return _then(_$EpisodesImpl(
      episodes: null == episodes
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
      season: null == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as Season,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesImpl implements _Episodes {
  _$EpisodesImpl({required final List<Episode> episodes, required this.season})
      : _episodes = episodes;

  factory _$EpisodesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesImplFromJson(json);

  final List<Episode> _episodes;
  @override
  List<Episode> get episodes {
    if (_episodes is EqualUnmodifiableListView) return _episodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodes);
  }

  @override
  final Season season;

  @override
  String toString() {
    return 'Episodes(episodes: $episodes, season: $season)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesImpl &&
            const DeepCollectionEquality().equals(other._episodes, _episodes) &&
            (identical(other.season, season) || other.season == season));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_episodes), season);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      __$$EpisodesImplCopyWithImpl<_$EpisodesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesImplToJson(
      this,
    );
  }
}

abstract class _Episodes implements Episodes {
  factory _Episodes(
      {required final List<Episode> episodes,
      required final Season season}) = _$EpisodesImpl;

  factory _Episodes.fromJson(Map<String, dynamic> json) =
      _$EpisodesImpl.fromJson;

  @override
  List<Episode> get episodes;
  @override
  Season get season;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodesResponse _$EpisodesResponseFromJson(Map<String, dynamic> json) {
  return _EpisodesResponse.fromJson(json);
}

/// @nodoc
mixin _$EpisodesResponse {
  Episodes get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesResponseCopyWith<EpisodesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesResponseCopyWith<$Res> {
  factory $EpisodesResponseCopyWith(
          EpisodesResponse value, $Res Function(EpisodesResponse) then) =
      _$EpisodesResponseCopyWithImpl<$Res, EpisodesResponse>;
  @useResult
  $Res call({Episodes items});

  $EpisodesCopyWith<$Res> get items;
}

/// @nodoc
class _$EpisodesResponseCopyWithImpl<$Res, $Val extends EpisodesResponse>
    implements $EpisodesResponseCopyWith<$Res> {
  _$EpisodesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Episodes,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodesCopyWith<$Res> get items {
    return $EpisodesCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesResponseImplCopyWith<$Res>
    implements $EpisodesResponseCopyWith<$Res> {
  factory _$$EpisodesResponseImplCopyWith(_$EpisodesResponseImpl value,
          $Res Function(_$EpisodesResponseImpl) then) =
      __$$EpisodesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Episodes items});

  @override
  $EpisodesCopyWith<$Res> get items;
}

/// @nodoc
class __$$EpisodesResponseImplCopyWithImpl<$Res>
    extends _$EpisodesResponseCopyWithImpl<$Res, _$EpisodesResponseImpl>
    implements _$$EpisodesResponseImplCopyWith<$Res> {
  __$$EpisodesResponseImplCopyWithImpl(_$EpisodesResponseImpl _value,
      $Res Function(_$EpisodesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$EpisodesResponseImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as Episodes,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesResponseImpl implements _EpisodesResponse {
  _$EpisodesResponseImpl({required this.items});

  factory _$EpisodesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesResponseImplFromJson(json);

  @override
  final Episodes items;

  @override
  String toString() {
    return 'EpisodesResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesResponseImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesResponseImplCopyWith<_$EpisodesResponseImpl> get copyWith =>
      __$$EpisodesResponseImplCopyWithImpl<_$EpisodesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesResponseImplToJson(
      this,
    );
  }
}

abstract class _EpisodesResponse implements EpisodesResponse {
  factory _EpisodesResponse({required final Episodes items}) =
      _$EpisodesResponseImpl;

  factory _EpisodesResponse.fromJson(Map<String, dynamic> json) =
      _$EpisodesResponseImpl.fromJson;

  @override
  Episodes get items;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesResponseImplCopyWith<_$EpisodesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
