import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

const MAX_PARTICLES = 20;
const MAX_VELOCITY = 3.0;

@immutable
class Particle {
  final Offset position;
  final double velocity;
  final List<int> nearbyParticles;
  final AxisDirection direction;

  Particle({
    this.position,
    this.velocity,
    this.nearbyParticles,
    this.direction,
  });

  Particle copyWith({
    Offset position,
    double velocity,
    List<int> nearbyParticles,
    AxisDirection direction,
  }) {
    return Particle(
      position: position ?? this.position,
      velocity: velocity ?? this.velocity,
      nearbyParticles: nearbyParticles ?? this.nearbyParticles,
      direction: direction ?? this.direction,
    );
  }
}

class ParticleState {
  final Size screenSize;
  List<Particle> particles;

  static final random = math.Random();

  ParticleState({this.screenSize}) {
    particles = List.generate(
      MAX_PARTICLES,
      (_) => _generateNewParticle(),
    );
  }

  Particle _generateNewParticle() {
    final direction = AxisDirection.values[random.nextInt(4)];
    final position = _generatePosition(direction);
    final velocity = random.nextDouble() * MAX_VELOCITY + 0.5;
    return Particle(
      direction: direction,
      position: position,
      velocity: velocity,
      nearbyParticles: [],
    );
  }

  Offset _generatePosition(AxisDirection direction) {
    switch (direction) {
      case AxisDirection.up:
        return Offset(
            random.nextDouble() * screenSize.width, screenSize.height - 0.1);
      case AxisDirection.right:
        return Offset(0, random.nextDouble() * screenSize.height);
      case AxisDirection.down:
        return Offset(random.nextDouble() * screenSize.width, 0);
      case AxisDirection.left:
        return Offset(
            screenSize.width - 0.1, random.nextDouble() * screenSize.height);
    }
    throw AssertionError('Unexpected error: $this');
  }

  Particle _advancePosition(Particle particle) {
    final origin = particle.position;
    switch (particle.direction) {
      case AxisDirection.up:
        return particle.copyWith(
            position: origin.translate(0, -particle.velocity));
      case AxisDirection.right:
        return particle.copyWith(
            position: origin.translate(particle.velocity, 0));
      case AxisDirection.down:
        return particle.copyWith(
            position: origin.translate(0, particle.velocity));
      case AxisDirection.left:
        return particle.copyWith(
            position: origin.translate(-particle.velocity, 0));
    }
    throw AssertionError('Unexpected error: $this');
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
