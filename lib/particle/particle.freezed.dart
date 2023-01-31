// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'particle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Particle {
  Offset get position => throw _privateConstructorUsedError;
  double get velocity => throw _privateConstructorUsedError;
  List<Distance> get nearbyParticles => throw _privateConstructorUsedError;

  /// パーティクルの移動する方向．
  /// unit: radian
  double get angle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticleCopyWith<Particle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticleCopyWith<$Res> {
  factory $ParticleCopyWith(Particle value, $Res Function(Particle) then) =
      _$ParticleCopyWithImpl<$Res, Particle>;
  @useResult
  $Res call(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle});
}

/// @nodoc
class _$ParticleCopyWithImpl<$Res, $Val extends Particle>
    implements $ParticleCopyWith<$Res> {
  _$ParticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? velocity = null,
    Object? nearbyParticles = null,
    Object? angle = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as double,
      nearbyParticles: null == nearbyParticles
          ? _value.nearbyParticles
          : nearbyParticles // ignore: cast_nullable_to_non_nullable
              as List<Distance>,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParticleCopyWith<$Res> implements $ParticleCopyWith<$Res> {
  factory _$$_ParticleCopyWith(
          _$_Particle value, $Res Function(_$_Particle) then) =
      __$$_ParticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle});
}

/// @nodoc
class __$$_ParticleCopyWithImpl<$Res>
    extends _$ParticleCopyWithImpl<$Res, _$_Particle>
    implements _$$_ParticleCopyWith<$Res> {
  __$$_ParticleCopyWithImpl(
      _$_Particle _value, $Res Function(_$_Particle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? velocity = null,
    Object? nearbyParticles = null,
    Object? angle = null,
  }) {
    return _then(_$_Particle(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      velocity: null == velocity
          ? _value.velocity
          : velocity // ignore: cast_nullable_to_non_nullable
              as double,
      nearbyParticles: null == nearbyParticles
          ? _value._nearbyParticles
          : nearbyParticles // ignore: cast_nullable_to_non_nullable
              as List<Distance>,
      angle: null == angle
          ? _value.angle
          : angle // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Particle implements _Particle {
  const _$_Particle(
      {this.position = Offset.zero,
      this.velocity = 0.0,
      final List<Distance> nearbyParticles = const [],
      this.angle = 0.0})
      : _nearbyParticles = nearbyParticles;

  @override
  @JsonKey()
  final Offset position;
  @override
  @JsonKey()
  final double velocity;
  final List<Distance> _nearbyParticles;
  @override
  @JsonKey()
  List<Distance> get nearbyParticles {
    if (_nearbyParticles is EqualUnmodifiableListView) return _nearbyParticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearbyParticles);
  }

  /// パーティクルの移動する方向．
  /// unit: radian
  @override
  @JsonKey()
  final double angle;

  @override
  String toString() {
    return 'Particle(position: $position, velocity: $velocity, nearbyParticles: $nearbyParticles, angle: $angle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Particle &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.velocity, velocity) ||
                other.velocity == velocity) &&
            const DeepCollectionEquality()
                .equals(other._nearbyParticles, _nearbyParticles) &&
            (identical(other.angle, angle) || other.angle == angle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, velocity,
      const DeepCollectionEquality().hash(_nearbyParticles), angle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParticleCopyWith<_$_Particle> get copyWith =>
      __$$_ParticleCopyWithImpl<_$_Particle>(this, _$identity);
}

abstract class _Particle implements Particle {
  const factory _Particle(
      {final Offset position,
      final double velocity,
      final List<Distance> nearbyParticles,
      final double angle}) = _$_Particle;

  @override
  Offset get position;
  @override
  double get velocity;
  @override
  List<Distance> get nearbyParticles;
  @override

  /// パーティクルの移動する方向．
  /// unit: radian
  double get angle;
  @override
  @JsonKey(ignore: true)
  _$$_ParticleCopyWith<_$_Particle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Distance {
  Offset get position => throw _privateConstructorUsedError;
  double get distance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DistanceCopyWith<Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res, Distance>;
  @useResult
  $Res call({Offset position, double distance});
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res, $Val extends Distance>
    implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? distance = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DistanceCopyWith<$Res> implements $DistanceCopyWith<$Res> {
  factory _$$_DistanceCopyWith(
          _$_Distance value, $Res Function(_$_Distance) then) =
      __$$_DistanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset position, double distance});
}

/// @nodoc
class __$$_DistanceCopyWithImpl<$Res>
    extends _$DistanceCopyWithImpl<$Res, _$_Distance>
    implements _$$_DistanceCopyWith<$Res> {
  __$$_DistanceCopyWithImpl(
      _$_Distance _value, $Res Function(_$_Distance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? distance = null,
  }) {
    return _then(_$_Distance(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Distance implements _Distance {
  const _$_Distance({this.position = Offset.zero, this.distance = 0.0});

  @override
  @JsonKey()
  final Offset position;
  @override
  @JsonKey()
  final double distance;

  @override
  String toString() {
    return 'Distance(position: $position, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Distance &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position, distance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DistanceCopyWith<_$_Distance> get copyWith =>
      __$$_DistanceCopyWithImpl<_$_Distance>(this, _$identity);
}

abstract class _Distance implements Distance {
  const factory _Distance({final Offset position, final double distance}) =
      _$_Distance;

  @override
  Offset get position;
  @override
  double get distance;
  @override
  @JsonKey(ignore: true)
  _$$_DistanceCopyWith<_$_Distance> get copyWith =>
      throw _privateConstructorUsedError;
}
