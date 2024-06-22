import 'package:flutter/material.dart';

final class FittedBoxView extends StatefulWidget {
  const FittedBoxView({super.key});

  @override
  State<FittedBoxView> createState() => _FittedBoxViewState();
}

class _FittedBoxViewState extends State<FittedBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FittedBoxView'),
      ),
      body: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: FractionallySizedBox(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Text('FittedBox'),
            ),
          ),
        ),
      ),
    );
  }
}
