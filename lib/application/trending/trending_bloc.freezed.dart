// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) getTrendingData,
    required TResult Function(String region) getForcedTrendingData,
    required TResult Function(List<Subscribe> channels) getHomeFeedData,
    required TResult Function(List<Subscribe> channels) getForcedHomeFeedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String region)? getTrendingData,
    TResult? Function(String region)? getForcedTrendingData,
    TResult? Function(List<Subscribe> channels)? getHomeFeedData,
    TResult? Function(List<Subscribe> channels)? getForcedHomeFeedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? getTrendingData,
    TResult Function(String region)? getForcedTrendingData,
    TResult Function(List<Subscribe> channels)? getHomeFeedData,
    TResult Function(List<Subscribe> channels)? getForcedHomeFeedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingData value) getTrendingData,
    required TResult Function(GetForcedTrendingData value)
        getForcedTrendingData,
    required TResult Function(GetHomeFeedData value) getHomeFeedData,
    required TResult Function(GetForcedHomeFeedData value)
        getForcedHomeFeedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingData value)? getTrendingData,
    TResult? Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult? Function(GetHomeFeedData value)? getHomeFeedData,
    TResult? Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingData value)? getTrendingData,
    TResult Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult Function(GetHomeFeedData value)? getHomeFeedData,
    TResult Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingEventCopyWith<$Res> {
  factory $TrendingEventCopyWith(
          TrendingEvent value, $Res Function(TrendingEvent) then) =
      _$TrendingEventCopyWithImpl<$Res, TrendingEvent>;
}

/// @nodoc
class _$TrendingEventCopyWithImpl<$Res, $Val extends TrendingEvent>
    implements $TrendingEventCopyWith<$Res> {
  _$TrendingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTrendingDataImplCopyWith<$Res> {
  factory _$$GetTrendingDataImplCopyWith(_$GetTrendingDataImpl value,
          $Res Function(_$GetTrendingDataImpl) then) =
      __$$GetTrendingDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String region});
}

/// @nodoc
class __$$GetTrendingDataImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$GetTrendingDataImpl>
    implements _$$GetTrendingDataImplCopyWith<$Res> {
  __$$GetTrendingDataImplCopyWithImpl(
      _$GetTrendingDataImpl _value, $Res Function(_$GetTrendingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
  }) {
    return _then(_$GetTrendingDataImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTrendingDataImpl implements GetTrendingData {
  const _$GetTrendingDataImpl({required this.region});

  @override
  final String region;

  @override
  String toString() {
    return 'TrendingEvent.getTrendingData(region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTrendingDataImpl &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTrendingDataImplCopyWith<_$GetTrendingDataImpl> get copyWith =>
      __$$GetTrendingDataImplCopyWithImpl<_$GetTrendingDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) getTrendingData,
    required TResult Function(String region) getForcedTrendingData,
    required TResult Function(List<Subscribe> channels) getHomeFeedData,
    required TResult Function(List<Subscribe> channels) getForcedHomeFeedData,
  }) {
    return getTrendingData(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String region)? getTrendingData,
    TResult? Function(String region)? getForcedTrendingData,
    TResult? Function(List<Subscribe> channels)? getHomeFeedData,
    TResult? Function(List<Subscribe> channels)? getForcedHomeFeedData,
  }) {
    return getTrendingData?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? getTrendingData,
    TResult Function(String region)? getForcedTrendingData,
    TResult Function(List<Subscribe> channels)? getHomeFeedData,
    TResult Function(List<Subscribe> channels)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getTrendingData != null) {
      return getTrendingData(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingData value) getTrendingData,
    required TResult Function(GetForcedTrendingData value)
        getForcedTrendingData,
    required TResult Function(GetHomeFeedData value) getHomeFeedData,
    required TResult Function(GetForcedHomeFeedData value)
        getForcedHomeFeedData,
  }) {
    return getTrendingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingData value)? getTrendingData,
    TResult? Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult? Function(GetHomeFeedData value)? getHomeFeedData,
    TResult? Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
  }) {
    return getTrendingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingData value)? getTrendingData,
    TResult Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult Function(GetHomeFeedData value)? getHomeFeedData,
    TResult Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getTrendingData != null) {
      return getTrendingData(this);
    }
    return orElse();
  }
}

abstract class GetTrendingData implements TrendingEvent {
  const factory GetTrendingData({required final String region}) =
      _$GetTrendingDataImpl;

  String get region;
  @JsonKey(ignore: true)
  _$$GetTrendingDataImplCopyWith<_$GetTrendingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetForcedTrendingDataImplCopyWith<$Res> {
  factory _$$GetForcedTrendingDataImplCopyWith(
          _$GetForcedTrendingDataImpl value,
          $Res Function(_$GetForcedTrendingDataImpl) then) =
      __$$GetForcedTrendingDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String region});
}

/// @nodoc
class __$$GetForcedTrendingDataImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$GetForcedTrendingDataImpl>
    implements _$$GetForcedTrendingDataImplCopyWith<$Res> {
  __$$GetForcedTrendingDataImplCopyWithImpl(_$GetForcedTrendingDataImpl _value,
      $Res Function(_$GetForcedTrendingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
  }) {
    return _then(_$GetForcedTrendingDataImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetForcedTrendingDataImpl implements GetForcedTrendingData {
  const _$GetForcedTrendingDataImpl({required this.region});

  @override
  final String region;

  @override
  String toString() {
    return 'TrendingEvent.getForcedTrendingData(region: $region)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForcedTrendingDataImpl &&
            (identical(other.region, region) || other.region == region));
  }

  @override
  int get hashCode => Object.hash(runtimeType, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForcedTrendingDataImplCopyWith<_$GetForcedTrendingDataImpl>
      get copyWith => __$$GetForcedTrendingDataImplCopyWithImpl<
          _$GetForcedTrendingDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) getTrendingData,
    required TResult Function(String region) getForcedTrendingData,
    required TResult Function(List<Subscribe> channels) getHomeFeedData,
    required TResult Function(List<Subscribe> channels) getForcedHomeFeedData,
  }) {
    return getForcedTrendingData(region);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String region)? getTrendingData,
    TResult? Function(String region)? getForcedTrendingData,
    TResult? Function(List<Subscribe> channels)? getHomeFeedData,
    TResult? Function(List<Subscribe> channels)? getForcedHomeFeedData,
  }) {
    return getForcedTrendingData?.call(region);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? getTrendingData,
    TResult Function(String region)? getForcedTrendingData,
    TResult Function(List<Subscribe> channels)? getHomeFeedData,
    TResult Function(List<Subscribe> channels)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getForcedTrendingData != null) {
      return getForcedTrendingData(region);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingData value) getTrendingData,
    required TResult Function(GetForcedTrendingData value)
        getForcedTrendingData,
    required TResult Function(GetHomeFeedData value) getHomeFeedData,
    required TResult Function(GetForcedHomeFeedData value)
        getForcedHomeFeedData,
  }) {
    return getForcedTrendingData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingData value)? getTrendingData,
    TResult? Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult? Function(GetHomeFeedData value)? getHomeFeedData,
    TResult? Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
  }) {
    return getForcedTrendingData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingData value)? getTrendingData,
    TResult Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult Function(GetHomeFeedData value)? getHomeFeedData,
    TResult Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getForcedTrendingData != null) {
      return getForcedTrendingData(this);
    }
    return orElse();
  }
}

abstract class GetForcedTrendingData implements TrendingEvent {
  const factory GetForcedTrendingData({required final String region}) =
      _$GetForcedTrendingDataImpl;

  String get region;
  @JsonKey(ignore: true)
  _$$GetForcedTrendingDataImplCopyWith<_$GetForcedTrendingDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeFeedDataImplCopyWith<$Res> {
  factory _$$GetHomeFeedDataImplCopyWith(_$GetHomeFeedDataImpl value,
          $Res Function(_$GetHomeFeedDataImpl) then) =
      __$$GetHomeFeedDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subscribe> channels});
}

/// @nodoc
class __$$GetHomeFeedDataImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$GetHomeFeedDataImpl>
    implements _$$GetHomeFeedDataImplCopyWith<$Res> {
  __$$GetHomeFeedDataImplCopyWithImpl(
      _$GetHomeFeedDataImpl _value, $Res Function(_$GetHomeFeedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
  }) {
    return _then(_$GetHomeFeedDataImpl(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Subscribe>,
    ));
  }
}

/// @nodoc

class _$GetHomeFeedDataImpl implements GetHomeFeedData {
  const _$GetHomeFeedDataImpl({required final List<Subscribe> channels})
      : _channels = channels;

  final List<Subscribe> _channels;
  @override
  List<Subscribe> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  String toString() {
    return 'TrendingEvent.getHomeFeedData(channels: $channels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeFeedDataImpl &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeFeedDataImplCopyWith<_$GetHomeFeedDataImpl> get copyWith =>
      __$$GetHomeFeedDataImplCopyWithImpl<_$GetHomeFeedDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) getTrendingData,
    required TResult Function(String region) getForcedTrendingData,
    required TResult Function(List<Subscribe> channels) getHomeFeedData,
    required TResult Function(List<Subscribe> channels) getForcedHomeFeedData,
  }) {
    return getHomeFeedData(channels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String region)? getTrendingData,
    TResult? Function(String region)? getForcedTrendingData,
    TResult? Function(List<Subscribe> channels)? getHomeFeedData,
    TResult? Function(List<Subscribe> channels)? getForcedHomeFeedData,
  }) {
    return getHomeFeedData?.call(channels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? getTrendingData,
    TResult Function(String region)? getForcedTrendingData,
    TResult Function(List<Subscribe> channels)? getHomeFeedData,
    TResult Function(List<Subscribe> channels)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getHomeFeedData != null) {
      return getHomeFeedData(channels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingData value) getTrendingData,
    required TResult Function(GetForcedTrendingData value)
        getForcedTrendingData,
    required TResult Function(GetHomeFeedData value) getHomeFeedData,
    required TResult Function(GetForcedHomeFeedData value)
        getForcedHomeFeedData,
  }) {
    return getHomeFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingData value)? getTrendingData,
    TResult? Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult? Function(GetHomeFeedData value)? getHomeFeedData,
    TResult? Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
  }) {
    return getHomeFeedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingData value)? getTrendingData,
    TResult Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult Function(GetHomeFeedData value)? getHomeFeedData,
    TResult Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getHomeFeedData != null) {
      return getHomeFeedData(this);
    }
    return orElse();
  }
}

abstract class GetHomeFeedData implements TrendingEvent {
  const factory GetHomeFeedData({required final List<Subscribe> channels}) =
      _$GetHomeFeedDataImpl;

  List<Subscribe> get channels;
  @JsonKey(ignore: true)
  _$$GetHomeFeedDataImplCopyWith<_$GetHomeFeedDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetForcedHomeFeedDataImplCopyWith<$Res> {
  factory _$$GetForcedHomeFeedDataImplCopyWith(
          _$GetForcedHomeFeedDataImpl value,
          $Res Function(_$GetForcedHomeFeedDataImpl) then) =
      __$$GetForcedHomeFeedDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Subscribe> channels});
}

/// @nodoc
class __$$GetForcedHomeFeedDataImplCopyWithImpl<$Res>
    extends _$TrendingEventCopyWithImpl<$Res, _$GetForcedHomeFeedDataImpl>
    implements _$$GetForcedHomeFeedDataImplCopyWith<$Res> {
  __$$GetForcedHomeFeedDataImplCopyWithImpl(_$GetForcedHomeFeedDataImpl _value,
      $Res Function(_$GetForcedHomeFeedDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
  }) {
    return _then(_$GetForcedHomeFeedDataImpl(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Subscribe>,
    ));
  }
}

/// @nodoc

class _$GetForcedHomeFeedDataImpl implements GetForcedHomeFeedData {
  const _$GetForcedHomeFeedDataImpl({required final List<Subscribe> channels})
      : _channels = channels;

  final List<Subscribe> _channels;
  @override
  List<Subscribe> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  String toString() {
    return 'TrendingEvent.getForcedHomeFeedData(channels: $channels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetForcedHomeFeedDataImpl &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetForcedHomeFeedDataImplCopyWith<_$GetForcedHomeFeedDataImpl>
      get copyWith => __$$GetForcedHomeFeedDataImplCopyWithImpl<
          _$GetForcedHomeFeedDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String region) getTrendingData,
    required TResult Function(String region) getForcedTrendingData,
    required TResult Function(List<Subscribe> channels) getHomeFeedData,
    required TResult Function(List<Subscribe> channels) getForcedHomeFeedData,
  }) {
    return getForcedHomeFeedData(channels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String region)? getTrendingData,
    TResult? Function(String region)? getForcedTrendingData,
    TResult? Function(List<Subscribe> channels)? getHomeFeedData,
    TResult? Function(List<Subscribe> channels)? getForcedHomeFeedData,
  }) {
    return getForcedHomeFeedData?.call(channels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String region)? getTrendingData,
    TResult Function(String region)? getForcedTrendingData,
    TResult Function(List<Subscribe> channels)? getHomeFeedData,
    TResult Function(List<Subscribe> channels)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getForcedHomeFeedData != null) {
      return getForcedHomeFeedData(channels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTrendingData value) getTrendingData,
    required TResult Function(GetForcedTrendingData value)
        getForcedTrendingData,
    required TResult Function(GetHomeFeedData value) getHomeFeedData,
    required TResult Function(GetForcedHomeFeedData value)
        getForcedHomeFeedData,
  }) {
    return getForcedHomeFeedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTrendingData value)? getTrendingData,
    TResult? Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult? Function(GetHomeFeedData value)? getHomeFeedData,
    TResult? Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
  }) {
    return getForcedHomeFeedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTrendingData value)? getTrendingData,
    TResult Function(GetForcedTrendingData value)? getForcedTrendingData,
    TResult Function(GetHomeFeedData value)? getHomeFeedData,
    TResult Function(GetForcedHomeFeedData value)? getForcedHomeFeedData,
    required TResult orElse(),
  }) {
    if (getForcedHomeFeedData != null) {
      return getForcedHomeFeedData(this);
    }
    return orElse();
  }
}

abstract class GetForcedHomeFeedData implements TrendingEvent {
  const factory GetForcedHomeFeedData(
      {required final List<Subscribe> channels}) = _$GetForcedHomeFeedDataImpl;

  List<Subscribe> get channels;
  @JsonKey(ignore: true)
  _$$GetForcedHomeFeedDataImplCopyWith<_$GetForcedHomeFeedDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TrendingState {
  List<TrendingResp> get trendingResult => throw _privateConstructorUsedError;
  List<TrendingResp> get feedResult => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isFeedError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingStateCopyWith<TrendingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingStateCopyWith<$Res> {
  factory $TrendingStateCopyWith(
          TrendingState value, $Res Function(TrendingState) then) =
      _$TrendingStateCopyWithImpl<$Res, TrendingState>;
  @useResult
  $Res call(
      {List<TrendingResp> trendingResult,
      List<TrendingResp> feedResult,
      bool isLoading,
      bool isError,
      bool isFeedError});
}

/// @nodoc
class _$TrendingStateCopyWithImpl<$Res, $Val extends TrendingState>
    implements $TrendingStateCopyWith<$Res> {
  _$TrendingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingResult = null,
    Object? feedResult = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isFeedError = null,
  }) {
    return _then(_value.copyWith(
      trendingResult: null == trendingResult
          ? _value.trendingResult
          : trendingResult // ignore: cast_nullable_to_non_nullable
              as List<TrendingResp>,
      feedResult: null == feedResult
          ? _value.feedResult
          : feedResult // ignore: cast_nullable_to_non_nullable
              as List<TrendingResp>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeedError: null == isFeedError
          ? _value.isFeedError
          : isFeedError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TrendingStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TrendingResp> trendingResult,
      List<TrendingResp> feedResult,
      bool isLoading,
      bool isError,
      bool isFeedError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TrendingStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trendingResult = null,
    Object? feedResult = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? isFeedError = null,
  }) {
    return _then(_$InitialImpl(
      trendingResult: null == trendingResult
          ? _value._trendingResult
          : trendingResult // ignore: cast_nullable_to_non_nullable
              as List<TrendingResp>,
      feedResult: null == feedResult
          ? _value._feedResult
          : feedResult // ignore: cast_nullable_to_non_nullable
              as List<TrendingResp>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeedError: null == isFeedError
          ? _value.isFeedError
          : isFeedError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<TrendingResp> trendingResult,
      required final List<TrendingResp> feedResult,
      required this.isLoading,
      required this.isError,
      required this.isFeedError})
      : _trendingResult = trendingResult,
        _feedResult = feedResult;

  final List<TrendingResp> _trendingResult;
  @override
  List<TrendingResp> get trendingResult {
    if (_trendingResult is EqualUnmodifiableListView) return _trendingResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingResult);
  }

  final List<TrendingResp> _feedResult;
  @override
  List<TrendingResp> get feedResult {
    if (_feedResult is EqualUnmodifiableListView) return _feedResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedResult);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final bool isFeedError;

  @override
  String toString() {
    return 'TrendingState(trendingResult: $trendingResult, feedResult: $feedResult, isLoading: $isLoading, isError: $isError, isFeedError: $isFeedError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality()
                .equals(other._trendingResult, _trendingResult) &&
            const DeepCollectionEquality()
                .equals(other._feedResult, _feedResult) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isFeedError, isFeedError) ||
                other.isFeedError == isFeedError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trendingResult),
      const DeepCollectionEquality().hash(_feedResult),
      isLoading,
      isError,
      isFeedError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TrendingState {
  const factory _Initial(
      {required final List<TrendingResp> trendingResult,
      required final List<TrendingResp> feedResult,
      required final bool isLoading,
      required final bool isError,
      required final bool isFeedError}) = _$InitialImpl;

  @override
  List<TrendingResp> get trendingResult;
  @override
  List<TrendingResp> get feedResult;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get isFeedError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
