import 'package:flutter/material.dart';
import 'package:yokumiru_particle/particle/particle.dart';
import 'package:yokumiru_particle/particle_state.dart';

class ParticleView extends StatefulWidget {
  const ParticleView({super.key, required this.screenSize});

  final Size screenSize;

  @override
  _ParticleViewState createState() => _ParticleViewState();
}

class _ParticleViewState extends State<ParticleView>
    with SingleTickerProviderStateMixin {
  late final baseAnimationController = AnimationController(
    vsync: this,
    duration: const Duration(days: 1),
  )
    ..addListener(() => state.update())
    ..forward();
  late final state = ParticleState(screenSize: widget.screenSize);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 1.2,
              colors: [
                Color(0xFF05234B),
                Color(0xFF031329),
              ],
            ),
          ),
        ),
        CustomPaint(
          painter: _ParticlePainter(
            particles: state.particles,
            controller: baseAnimationController,
          ),
        ),
      ],
    );
  }
}

class _ParticlePainter extends CustomPainter {
  final List<Particle> particles;
  final AnimationController controller;
  _ParticlePainter({
    required this.particles,
    required this.controller,
  }) : super(repaint: controller);

  static final _particlePaint = Paint()..color = Colors.white;

  @override
  void paint(Canvas canvas, Size size) {
    for (final particle in particles) {
      final radius = particle.velocity.clamp(0.4, MAX_VELOCITY) * 2.0;
      canvas.drawCircle(particle.position, radius, _particlePaint);

      for (final nearby in particle.nearbyParticles) {
        final linkPaint = Paint()
          ..color =
              Colors.white.withOpacity(1.0 - (nearby.distance / NEARBY_RADIUS))
          ..strokeWidth = 1.0;

        canvas.drawLine(particle.position, nearby.position, linkPaint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
