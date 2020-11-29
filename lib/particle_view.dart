import 'package:flutter/material.dart';

class ParticleView extends StatefulWidget {
  const ParticleView({Key key}) : super(key: key);

  @override
  _ParticleViewState createState() => _ParticleViewState();
}

class _ParticleViewState extends State<ParticleView>
    with SingleTickerProviderStateMixin {
  AnimationController baseAnimationController;

  @override
  void initState() {
    baseAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(days: 1),
    )..forward();

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
        AnimatedBuilder(
          animation: baseAnimationController,
          builder: (context, _) => Center(
            child: Text('${baseAnimationController.value}'),
          ),
        ),
      ],
    );
  }
}
