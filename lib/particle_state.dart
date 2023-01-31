import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:yokumiru_particle/particle/particle.dart';

const MAX_PARTICLES = 60;
const MAX_VELOCITY = 3.0;
const NEARBY_RADIUS = 120.0;

extension OffsetEx on Offset {
  double distanceToOther(Offset other) =>
      math.sqrt(math.pow((dx - other.dx), 2) + math.pow((dy - other.dy), 2));
}

class ParticleState {
  final Size screenSize;
  List<Particle> particles = [];

  static final _random = math.Random();

  ParticleState({required this.screenSize}) {
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
    }

    for (int index = 0; index < MAX_PARTICLES; index++) {
      final targets = particles.where((e) => e != particles[index]);
      final distances = targets.map((e) => Distance(
            position: e.position,
            distance: e.position.distanceToOther(particles[index].position),
          ));
      particles[index] = particles[index].copyWith(
        nearbyParticles:
            distances.where((e) => e.distance < NEARBY_RADIUS).toList(),
      );
    }
  }
}
