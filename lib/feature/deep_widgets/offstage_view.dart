import 'package:flutter/material.dart';

final class OfftageView extends StatefulWidget {
  const OfftageView({super.key});

  @override
  State<OfftageView> createState() => _OfftageViewState();
}

class _OfftageViewState extends State<OfftageView> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OfftageView'),
      ),
      body: Center(
        child: Column(
          children: [
            Offstage(
              offstage: _isVisible,
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                _isVisible = !_isVisible;
              }),
              child: const Text('Toggle Offstage'),
            ),
          ],
        ),
      ),
    );
  }
}
