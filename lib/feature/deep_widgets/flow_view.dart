import 'package:flutter/material.dart';

final class FlowView extends StatefulWidget {
  const FlowView({super.key});

  @override
  State<FlowView> createState() => _FlowViewState();
}

class _FlowViewState extends State<FlowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlowView'),
      ),
      body: Flow(
        delegate: _FlowDelegate(),
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 60,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}

class _FlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0.0;
    double y = 0.0;

    for (int i = 0; i < context.childCount; i++) {
      final w = context.getChildSize(i)!.width;
      final h = context.getChildSize(i)!.height;

      // Check if the current position exceeds the width of the context.
      if (x + w > context.size.width) {
        // Move to the next line.
        x = 0;
        y += h + 10.0; // Add a 10.0 vertical spacing between rows.
      }

      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0.0),
      );

      // Update the x position for the next child.
      x += w + 10.0; // Add a 10.0 horizontal spacing between columns.
    }
  }

  @override
  getSize(BoxConstraints constraints) {
    // Set the size of the Flow widget.
    return Size(constraints.maxWidth, constraints.maxHeight);
  }

  @override
  bool shouldRepaint(_FlowDelegate oldDelegate) => false;
}
