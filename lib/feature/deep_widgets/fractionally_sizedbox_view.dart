import 'package:flutter/material.dart';

final class FractionallySizedBoxView extends StatefulWidget {
  const FractionallySizedBoxView({super.key});

  @override
  State<FractionallySizedBoxView> createState() => _FractionallySizedBoxViewState();
}

class _FractionallySizedBoxViewState extends State<FractionallySizedBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBoxView'),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          heightFactor: 0.5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
