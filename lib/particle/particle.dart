import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'particle.freezed.dart';

@freezed
abstract class Particle with _$Particle {
  const factory Particle({
    Offset position,
    double velocity,
    List<Distance> nearbyParticles,

    /// パーティクルの移動する方向．
    /// unit: radian
    double angle,
  }) = _Particle;
}

@freezed
abstract class Distance with _$Distance {
  const factory Distance({
    Offset position,
    double distance,
  }) = _Distance;
}
