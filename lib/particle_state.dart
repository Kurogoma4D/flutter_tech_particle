import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

const MAX_PARTICLES = 60;
const MAX_VELOCITY = 3.0;

@immutable
class Particle {
  final Offset position;
  final double velocity;
  final List<int> nearbyParticles;
  final double angle;

  Particle({
    this.position,
    this.velocity,
    this.nearbyParticles,
    this.angle,
  });

  Particle copyWith({
    Offset position,
    double velocity,
    List<int> nearbyParticles,
    double angle,
  }) {
    return Particle(
      position: position ?? this.position,
      velocity: velocity ?? this.velocity,
      nearbyParticles: nearbyParticles ?? this.nearbyParticles,
      angle: angle ?? this.angle,
    );
  }
}

class ParticleState {
  final Size screenSize;
  List<Particle> particles;

  static final _random = math.Random();

  ParticleState({@required this.screenSize}) {
    particles = List.generate(
      MAX_PARTICLES,
      (_) => _generateNewParticle(),
    );
  }

  Particle _generateNewParticle() {
    final angle = _random.nextDouble() * 2 * math.pi;
    final position = _generatePosition(angle);
    final velocity = _random.nextDouble() * MAX_VELOCITY + 0.5;
    return Particle(
      angle: angle,
      position: position,
      velocity: velocity,
      nearbyParticles: [],
    );
  }

  AxisDirection _classifyDirection(double angle) {
    return angle >= math.pi / 2 && angle < math.pi * 3 / 2
        ? AxisDirection.left
        : AxisDirection.right;
  }

  Offset _generatePosition(double angle) {
    final directionClass = _classifyDirection(angle);
    switch (directionClass) {
      case AxisDirection.right:
        return Offset(0, _random.nextDouble() * screenSize.height);
      case AxisDirection.left:
        return Offset(
            screenSize.width - 0.1, _random.nextDouble() * screenSize.height);
      default:
        throw AssertionError('Unexpected error: $this');
    }
  }

  Particle _advancePosition(Particle particle) {
    final origin = particle.position;
    final deltaPosition =
        Offset(math.cos(particle.angle), math.sin(particle.angle)) *
            particle.velocity;
    return particle.copyWith(position: origin + deltaPosition);
  }

  void update() {
    for (int index = 0; index < MAX_PARTICLES; index++) {
      particles[index] = _advancePosition(particles[index]);

      if (!screenSize.contains(particles[index].position)) {
        particles[index] = _generateNewParticle();
      }

      // calculate nearby particles
    }
  }
}
