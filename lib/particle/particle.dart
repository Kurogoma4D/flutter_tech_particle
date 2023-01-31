import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'particle.freezed.dart';

@freezed
class Particle with _$Particle {
  const factory Particle({
    @Default(Offset.zero) Offset position,
    @Default(0.0) double velocity,
    @Default([]) List<Distance> nearbyParticles,

    /// パーティクルの移動する方向．
    /// unit: radian
    @Default(0.0) double angle,
  }) = _Particle;
}

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    @Default(Offset.zero) Offset position,
    @Default(0.0) double distance,
  }) = _Distance;
}
