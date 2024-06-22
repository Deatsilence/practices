import 'package:flutter/material.dart';

final class DraggableAndDragTargetView extends StatefulWidget {
  const DraggableAndDragTargetView({super.key});

  @override
  State<DraggableAndDragTargetView> createState() => _DraggableAndDragTargetViewState();
}

class _DraggableAndDragTargetViewState extends State<DraggableAndDragTargetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableAndDragTargetView'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<int>(
              data: 1,
              feedback: Container(
                height: 100,
                width: 100,
                color: Colors.blue.withOpacity(0.5),
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
              childWhenDragging: Container(
                height: 100,
                width: 100,
                color: Colors.blue.withOpacity(0.5),
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text('Draggable'),
                ),
              ),
            ),
            DragTarget<int>(
              builder: (context, candidateData, rejectedData) {
                return Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Center(
                    child: Text('DragTarget'),
                  ),
                );
              },
              onAcceptWithDetails: (data) {
                print('Accepted ${data.data}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
