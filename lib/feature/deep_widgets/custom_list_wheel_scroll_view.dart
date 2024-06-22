import 'package:flutter/material.dart';

final class CustomListWheelScrollView extends StatefulWidget {
  const CustomListWheelScrollView({super.key});

  @override
  State<CustomListWheelScrollView> createState() => _CustomListWheelScrollViewState();
}

class _CustomListWheelScrollViewState extends State<CustomListWheelScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollView'),
      ),
      body: ListWheelScrollView(
        diameterRatio: 2.0,
        magnification: 0.3,
        itemExtent: 100,
        children: List.generate(
          10,
          (index) => ListTile(
            title: Text('Item ${index + 1}'),
          ),
        ),
      ),
    );
  }
}
