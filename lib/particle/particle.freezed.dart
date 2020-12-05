// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'particle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ParticleTearOff {
  const _$ParticleTearOff();

// ignore: unused_element
  _Particle call(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle}) {
    return _Particle(
      position: position,
      velocity: velocity,
      nearbyParticles: nearbyParticles,
      angle: angle,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Particle = _$ParticleTearOff();

/// @nodoc
mixin _$Particle {
  Offset get position;
  double get velocity;
  List<Distance> get nearbyParticles;

  /// パーティクルの移動する方向．
  /// unit: radian
  double get angle;

  $ParticleCopyWith<Particle> get copyWith;
}

/// @nodoc
abstract class $ParticleCopyWith<$Res> {
  factory $ParticleCopyWith(Particle value, $Res Function(Particle) then) =
      _$ParticleCopyWithImpl<$Res>;
  $Res call(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle});
}

/// @nodoc
class _$ParticleCopyWithImpl<$Res> implements $ParticleCopyWith<$Res> {
  _$ParticleCopyWithImpl(this._value, this._then);

  final Particle _value;
  // ignore: unused_field
  final $Res Function(Particle) _then;

  @override
  $Res call({
    Object position = freezed,
    Object velocity = freezed,
    Object nearbyParticles = freezed,
    Object angle = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed ? _value.position : position as Offset,
      velocity: velocity == freezed ? _value.velocity : velocity as double,
      nearbyParticles: nearbyParticles == freezed
          ? _value.nearbyParticles
          : nearbyParticles as List<Distance>,
      angle: angle == freezed ? _value.angle : angle as double,
    ));
  }
}

/// @nodoc
abstract class _$ParticleCopyWith<$Res> implements $ParticleCopyWith<$Res> {
  factory _$ParticleCopyWith(_Particle value, $Res Function(_Particle) then) =
      __$ParticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle});
}

/// @nodoc
class __$ParticleCopyWithImpl<$Res> extends _$ParticleCopyWithImpl<$Res>
    implements _$ParticleCopyWith<$Res> {
  __$ParticleCopyWithImpl(_Particle _value, $Res Function(_Particle) _then)
      : super(_value, (v) => _then(v as _Particle));

  @override
  _Particle get _value => super._value as _Particle;

  @override
  $Res call({
    Object position = freezed,
    Object velocity = freezed,
    Object nearbyParticles = freezed,
    Object angle = freezed,
  }) {
    return _then(_Particle(
      position: position == freezed ? _value.position : position as Offset,
      velocity: velocity == freezed ? _value.velocity : velocity as double,
      nearbyParticles: nearbyParticles == freezed
          ? _value.nearbyParticles
          : nearbyParticles as List<Distance>,
      angle: angle == freezed ? _value.angle : angle as double,
    ));
  }
}

/// @nodoc
class _$_Particle with DiagnosticableTreeMixin implements _Particle {
  const _$_Particle(
      {this.position, this.velocity, this.nearbyParticles, this.angle});

  @override
  final Offset position;
  @override
  final double velocity;
  @override
  final List<Distance> nearbyParticles;
  @override

  /// パーティクルの移動する方向．
  /// unit: radian
  final double angle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Particle(position: $position, velocity: $velocity, nearbyParticles: $nearbyParticles, angle: $angle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Particle'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('velocity', velocity))
      ..add(DiagnosticsProperty('nearbyParticles', nearbyParticles))
      ..add(DiagnosticsProperty('angle', angle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Particle &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.velocity, velocity) ||
                const DeepCollectionEquality()
                    .equals(other.velocity, velocity)) &&
            (identical(other.nearbyParticles, nearbyParticles) ||
                const DeepCollectionEquality()
                    .equals(other.nearbyParticles, nearbyParticles)) &&
            (identical(other.angle, angle) ||
                const DeepCollectionEquality().equals(other.angle, angle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(velocity) ^
      const DeepCollectionEquality().hash(nearbyParticles) ^
      const DeepCollectionEquality().hash(angle);

  @override
  _$ParticleCopyWith<_Particle> get copyWith =>
      __$ParticleCopyWithImpl<_Particle>(this, _$identity);
}

abstract class _Particle implements Particle {
  const factory _Particle(
      {Offset position,
      double velocity,
      List<Distance> nearbyParticles,
      double angle}) = _$_Particle;

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
  _$ParticleCopyWith<_Particle> get copyWith;
}

/// @nodoc
class _$DistanceTearOff {
  const _$DistanceTearOff();

// ignore: unused_element
  _Distance call({Offset position, double distance}) {
    return _Distance(
      position: position,
      distance: distance,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Distance = _$DistanceTearOff();

/// @nodoc
mixin _$Distance {
  Offset get position;
  double get distance;

  $DistanceCopyWith<Distance> get copyWith;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res>;
  $Res call({Offset position, double distance});
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res> implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  final Distance _value;
  // ignore: unused_field
  final $Res Function(Distance) _then;

  @override
  $Res call({
    Object position = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed ? _value.position : position as Offset,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

/// @nodoc
abstract class _$DistanceCopyWith<$Res> implements $DistanceCopyWith<$Res> {
  factory _$DistanceCopyWith(_Distance value, $Res Function(_Distance) then) =
      __$DistanceCopyWithImpl<$Res>;
  @override
  $Res call({Offset position, double distance});
}

/// @nodoc
class __$DistanceCopyWithImpl<$Res> extends _$DistanceCopyWithImpl<$Res>
    implements _$DistanceCopyWith<$Res> {
  __$DistanceCopyWithImpl(_Distance _value, $Res Function(_Distance) _then)
      : super(_value, (v) => _then(v as _Distance));

  @override
  _Distance get _value => super._value as _Distance;

  @override
  $Res call({
    Object position = freezed,
    Object distance = freezed,
  }) {
    return _then(_Distance(
      position: position == freezed ? _value.position : position as Offset,
      distance: distance == freezed ? _value.distance : distance as double,
    ));
  }
}

/// @nodoc
class _$_Distance with DiagnosticableTreeMixin implements _Distance {
  const _$_Distance({this.position, this.distance});

  @override
  final Offset position;
  @override
  final double distance;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Distance(position: $position, distance: $distance)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Distance'))
      ..add(DiagnosticsProperty('position', position))
      ..add(DiagnosticsProperty('distance', distance));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Distance &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$DistanceCopyWith<_Distance> get copyWith =>
      __$DistanceCopyWithImpl<_Distance>(this, _$identity);
}

abstract class _Distance implements Distance {
  const factory _Distance({Offset position, double distance}) = _$_Distance;

  @override
  Offset get position;
  @override
  double get distance;
  @override
  _$DistanceCopyWith<_Distance> get copyWith;
}
