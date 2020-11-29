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
      List<int> nearbyParticles,
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
  List<int> get nearbyParticles;

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
      List<int> nearbyParticles,
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
          : nearbyParticles as List<int>,
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
      List<int> nearbyParticles,
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
          : nearbyParticles as List<int>,
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
  final List<int> nearbyParticles;
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
      List<int> nearbyParticles,
      double angle}) = _$_Particle;

  @override
  Offset get position;
  @override
  double get velocity;
  @override
  List<int> get nearbyParticles;
  @override

  /// パーティクルの移動する方向．
  /// unit: radian
  double get angle;
  @override
  _$ParticleCopyWith<_Particle> get copyWith;
}
