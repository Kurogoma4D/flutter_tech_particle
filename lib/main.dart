import 'package:flutter/material.dart';
import 'package:yokumiru_particle/particle_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BasePage(),
    );
  }
}

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Particles.'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) =>
            ParticleView(screenSize: constraints.biggest),
      ),
    );
  }
}
