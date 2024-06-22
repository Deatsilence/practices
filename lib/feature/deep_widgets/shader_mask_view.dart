import 'package:flutter/material.dart';

final class ShaderMaskView extends StatefulWidget {
  const ShaderMaskView({super.key});

  @override
  State<ShaderMaskView> createState() => _ShaderMaskViewState();
}

class _ShaderMaskViewState extends State<ShaderMaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShaderMaskView'),
      ),
      body: ListView(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.blue, Colors.red],
            ).createShader(bounds),
            child: const Text(
              'Colored Text',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Colors.green, Colors.black],
            ).createShader(bounds),
            child: const Text(
              'Colored Text',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
