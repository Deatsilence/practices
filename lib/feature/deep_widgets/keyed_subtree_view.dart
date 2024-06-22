import 'package:flutter/material.dart';

final class KeyedSbutreeView extends StatefulWidget {
  const KeyedSbutreeView({super.key});

  @override
  State<KeyedSbutreeView> createState() => _KeyedSbutreeViewState();
}

class _KeyedSbutreeViewState extends State<KeyedSbutreeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KeyedSubtreeView'),
      ),
      body: Center(
        child: KeyedSubtree(
          key: const ValueKey<String>('KeyedSubtree'),
          child: Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
