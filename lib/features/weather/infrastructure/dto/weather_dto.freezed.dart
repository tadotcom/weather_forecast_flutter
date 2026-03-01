// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherResponseDto _$WeatherResponseDtoFromJson(Map<String, dynamic> json) {
  return _WeatherResponseDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponseDto {
  List<WeatherItemDto> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseDtoCopyWith<WeatherResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseDtoCopyWith<$Res> {
  factory $WeatherResponseDtoCopyWith(
          WeatherResponseDto value, $Res Function(WeatherResponseDto) then) =
      _$WeatherResponseDtoCopyWithImpl<$Res, WeatherResponseDto>;
  @useResult
  $Res call({List<WeatherItemDto> list});
}

/// @nodoc
class _$WeatherResponseDtoCopyWithImpl<$Res, $Val extends WeatherResponseDto>
    implements $WeatherResponseDtoCopyWith<$Res> {
  _$WeatherResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherResponseDtoImplCopyWith<$Res>
    implements $WeatherResponseDtoCopyWith<$Res> {
  factory _$$WeatherResponseDtoImplCopyWith(_$WeatherResponseDtoImpl value,
          $Res Function(_$WeatherResponseDtoImpl) then) =
      __$$WeatherResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<WeatherItemDto> list});
}

/// @nodoc
class __$$WeatherResponseDtoImplCopyWithImpl<$Res>
    extends _$WeatherResponseDtoCopyWithImpl<$Res, _$WeatherResponseDtoImpl>
    implements _$$WeatherResponseDtoImplCopyWith<$Res> {
  __$$WeatherResponseDtoImplCopyWithImpl(_$WeatherResponseDtoImpl _value,
      $Res Function(_$WeatherResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$WeatherResponseDtoImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WeatherItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherResponseDtoImpl implements _WeatherResponseDto {
  const _$WeatherResponseDtoImpl({required final List<WeatherItemDto> list})
      : _list = list;

  factory _$WeatherResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseDtoImplFromJson(json);

  final List<WeatherItemDto> _list;
  @override
  List<WeatherItemDto> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'WeatherResponseDto(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseDtoImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      __$$WeatherResponseDtoImplCopyWithImpl<_$WeatherResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherResponseDto implements WeatherResponseDto {
  const factory _WeatherResponseDto(
      {required final List<WeatherItemDto> list}) = _$WeatherResponseDtoImpl;

  factory _WeatherResponseDto.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseDtoImpl.fromJson;

  @override
  List<WeatherItemDto> get list;
  @override
  @JsonKey(ignore: true)
  _$$WeatherResponseDtoImplCopyWith<_$WeatherResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherItemDto _$WeatherItemDtoFromJson(Map<String, dynamic> json) {
  return _WeatherItemDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherItemDto {
  int get dt => throw _privateConstructorUsedError;
  MainDto get main => throw _privateConstructorUsedError;
  List<WeatherIconDto> get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherItemDtoCopyWith<WeatherItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherItemDtoCopyWith<$Res> {
  factory $WeatherItemDtoCopyWith(
          WeatherItemDto value, $Res Function(WeatherItemDto) then) =
      _$WeatherItemDtoCopyWithImpl<$Res, WeatherItemDto>;
  @useResult
  $Res call({int dt, MainDto main, List<WeatherIconDto> weather});

  $MainDtoCopyWith<$Res> get main;
}

/// @nodoc
class _$WeatherItemDtoCopyWithImpl<$Res, $Val extends WeatherItemDto>
    implements $WeatherItemDtoCopyWith<$Res> {
  _$WeatherItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherIconDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainDtoCopyWith<$Res> get main {
    return $MainDtoCopyWith<$Res>(_value.main, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherItemDtoImplCopyWith<$Res>
    implements $WeatherItemDtoCopyWith<$Res> {
  factory _$$WeatherItemDtoImplCopyWith(_$WeatherItemDtoImpl value,
          $Res Function(_$WeatherItemDtoImpl) then) =
      __$$WeatherItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dt, MainDto main, List<WeatherIconDto> weather});

  @override
  $MainDtoCopyWith<$Res> get main;
}

/// @nodoc
class __$$WeatherItemDtoImplCopyWithImpl<$Res>
    extends _$WeatherItemDtoCopyWithImpl<$Res, _$WeatherItemDtoImpl>
    implements _$$WeatherItemDtoImplCopyWith<$Res> {
  __$$WeatherItemDtoImplCopyWithImpl(
      _$WeatherItemDtoImpl _value, $Res Function(_$WeatherItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
  }) {
    return _then(_$WeatherItemDtoImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainDto,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherIconDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherItemDtoImpl extends _WeatherItemDto {
  const _$WeatherItemDtoImpl(
      {required this.dt,
      required this.main,
      required final List<WeatherIconDto> weather})
      : _weather = weather,
        super._();

  factory _$WeatherItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherItemDtoImplFromJson(json);

  @override
  final int dt;
  @override
  final MainDto main;
  final List<WeatherIconDto> _weather;
  @override
  List<WeatherIconDto> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  String toString() {
    return 'WeatherItemDto(dt: $dt, main: $main, weather: $weather)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherItemDtoImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, dt, main, const DeepCollectionEquality().hash(_weather));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherItemDtoImplCopyWith<_$WeatherItemDtoImpl> get copyWith =>
      __$$WeatherItemDtoImplCopyWithImpl<_$WeatherItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherItemDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherItemDto extends WeatherItemDto {
  const factory _WeatherItemDto(
      {required final int dt,
      required final MainDto main,
      required final List<WeatherIconDto> weather}) = _$WeatherItemDtoImpl;
  const _WeatherItemDto._() : super._();

  factory _WeatherItemDto.fromJson(Map<String, dynamic> json) =
      _$WeatherItemDtoImpl.fromJson;

  @override
  int get dt;
  @override
  MainDto get main;
  @override
  List<WeatherIconDto> get weather;
  @override
  @JsonKey(ignore: true)
  _$$WeatherItemDtoImplCopyWith<_$WeatherItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainDto _$MainDtoFromJson(Map<String, dynamic> json) {
  return _MainDto.fromJson(json);
}

/// @nodoc
mixin _$MainDto {
  double get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDtoCopyWith<MainDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDtoCopyWith<$Res> {
  factory $MainDtoCopyWith(MainDto value, $Res Function(MainDto) then) =
      _$MainDtoCopyWithImpl<$Res, MainDto>;
  @useResult
  $Res call({double temp});
}

/// @nodoc
class _$MainDtoCopyWithImpl<$Res, $Val extends MainDto>
    implements $MainDtoCopyWith<$Res> {
  _$MainDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainDtoImplCopyWith<$Res> implements $MainDtoCopyWith<$Res> {
  factory _$$MainDtoImplCopyWith(
          _$MainDtoImpl value, $Res Function(_$MainDtoImpl) then) =
      __$$MainDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double temp});
}

/// @nodoc
class __$$MainDtoImplCopyWithImpl<$Res>
    extends _$MainDtoCopyWithImpl<$Res, _$MainDtoImpl>
    implements _$$MainDtoImplCopyWith<$Res> {
  __$$MainDtoImplCopyWithImpl(
      _$MainDtoImpl _value, $Res Function(_$MainDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
  }) {
    return _then(_$MainDtoImpl(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainDtoImpl implements _MainDto {
  const _$MainDtoImpl({required this.temp});

  factory _$MainDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainDtoImplFromJson(json);

  @override
  final double temp;

  @override
  String toString() {
    return 'MainDto(temp: $temp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainDtoImpl &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainDtoImplCopyWith<_$MainDtoImpl> get copyWith =>
      __$$MainDtoImplCopyWithImpl<_$MainDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainDtoImplToJson(
      this,
    );
  }
}

abstract class _MainDto implements MainDto {
  const factory _MainDto({required final double temp}) = _$MainDtoImpl;

  factory _MainDto.fromJson(Map<String, dynamic> json) = _$MainDtoImpl.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(ignore: true)
  _$$MainDtoImplCopyWith<_$MainDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherIconDto _$WeatherIconDtoFromJson(Map<String, dynamic> json) {
  return _WeatherIconDto.fromJson(json);
}

/// @nodoc
mixin _$WeatherIconDto {
  String get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherIconDtoCopyWith<WeatherIconDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherIconDtoCopyWith<$Res> {
  factory $WeatherIconDtoCopyWith(
          WeatherIconDto value, $Res Function(WeatherIconDto) then) =
      _$WeatherIconDtoCopyWithImpl<$Res, WeatherIconDto>;
  @useResult
  $Res call({String icon});
}

/// @nodoc
class _$WeatherIconDtoCopyWithImpl<$Res, $Val extends WeatherIconDto>
    implements $WeatherIconDtoCopyWith<$Res> {
  _$WeatherIconDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherIconDtoImplCopyWith<$Res>
    implements $WeatherIconDtoCopyWith<$Res> {
  factory _$$WeatherIconDtoImplCopyWith(_$WeatherIconDtoImpl value,
          $Res Function(_$WeatherIconDtoImpl) then) =
      __$$WeatherIconDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon});
}

/// @nodoc
class __$$WeatherIconDtoImplCopyWithImpl<$Res>
    extends _$WeatherIconDtoCopyWithImpl<$Res, _$WeatherIconDtoImpl>
    implements _$$WeatherIconDtoImplCopyWith<$Res> {
  __$$WeatherIconDtoImplCopyWithImpl(
      _$WeatherIconDtoImpl _value, $Res Function(_$WeatherIconDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
  }) {
    return _then(_$WeatherIconDtoImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherIconDtoImpl implements _WeatherIconDto {
  const _$WeatherIconDtoImpl({required this.icon});

  factory _$WeatherIconDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherIconDtoImplFromJson(json);

  @override
  final String icon;

  @override
  String toString() {
    return 'WeatherIconDto(icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherIconDtoImpl &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherIconDtoImplCopyWith<_$WeatherIconDtoImpl> get copyWith =>
      __$$WeatherIconDtoImplCopyWithImpl<_$WeatherIconDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherIconDtoImplToJson(
      this,
    );
  }
}

abstract class _WeatherIconDto implements WeatherIconDto {
  const factory _WeatherIconDto({required final String icon}) =
      _$WeatherIconDtoImpl;

  factory _WeatherIconDto.fromJson(Map<String, dynamic> json) =
      _$WeatherIconDtoImpl.fromJson;

  @override
  String get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherIconDtoImplCopyWith<_$WeatherIconDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
