import 'package:flutter/material.dart';

final class CustomReorderableListView extends StatefulWidget {
  const CustomReorderableListView({super.key});

  @override
  State<CustomReorderableListView> createState() => _CustomReorderableListViewState();
}

class _CustomReorderableListViewState extends State<CustomReorderableListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReorderableListView'),
      ),
      body: ReorderableListView(
        children: List.generate(
          10,
          (index) => ListTile(
            key: ValueKey(index),
            title: Text('Item ${index + 1}'),
          ),
        ),
        onReorder: (oldIndex, newIndex) {
          setState(
            () {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
            },
          );
        },
      ),
    );
  }
}
