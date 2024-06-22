import 'package:flutter/material.dart';

final class LimitedBoxView extends StatefulWidget {
  const LimitedBoxView({super.key});

  @override
  State<LimitedBoxView> createState() => _LimitedBoxViewState();
}

class _LimitedBoxViewState extends State<LimitedBoxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LimitedBoxView'),
      ),
      body: ListView(
        children: [
          SizedBox(
            // height: 100,
            child: LimitedBox(
              maxHeight: 23,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          LimitedBox(
            maxHeight: 50,
            maxWidth: 50,
            child: Container(
              color: Colors.green,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
