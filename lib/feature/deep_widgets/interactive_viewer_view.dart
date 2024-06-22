import 'package:flutter/material.dart';

final class InteractiveViewerView extends StatefulWidget {
  const InteractiveViewerView({super.key});

  @override
  State<InteractiveViewerView> createState() => _InteractiveViewerViewState();
}

class _InteractiveViewerViewState extends State<InteractiveViewerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewerView'),
      ),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 2.0,
          child: Image.network(
            'https://picsum.photos/200/300',
          ),
        ),
      ),
    );
  }
}
