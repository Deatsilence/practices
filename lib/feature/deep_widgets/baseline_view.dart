import 'package:flutter/material.dart';

final class BaselineView extends StatefulWidget {
  const BaselineView({super.key});

  @override
  State<BaselineView> createState() => _BaselineViewState();
}

class _BaselineViewState extends State<BaselineView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BaselineView'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: Column(
              children: [
                Text(
                  'A123',
                  style: TextStyle(
                    fontSize: 20.0,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
                Text(
                  'B123',
                  style: TextStyle(
                    fontSize: 40.0,
                    textBaseline: TextBaseline.alphabetic,
                  ),
                ),
              ],
            ),
          ),
          Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: Column(
              children: [
                Text(
                  'C123',
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
                Text(
                  'D123',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  'E123',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
