import 'package:flutter/material.dart';

final class ConstrainedBoxView extends StatefulWidget {
  const ConstrainedBoxView({super.key});

  @override
  State<ConstrainedBoxView> createState() => _ConstrainedBoxViewState();
}

class _ConstrainedBoxViewState extends State<ConstrainedBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBoxView'),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxWidth: 200,
            maxHeight: 200,
          ),
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
