import 'package:flutter/material.dart';

final class CarouselViewTest extends StatefulWidget {
  const CarouselViewTest({super.key});

  @override
  State<CarouselViewTest> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselViewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselViewTest'),
      ),
      body: Center(
        child: CarouselView(
          itemExtent: 200.0,
          children: <Widget>[
            Container(color: Colors.cyan, child: const Text('Page 1')),
            Container(color: Colors.red, child: const Text('Page 2')),
            Container(color: Colors.yellow, child: const Text('Page 3')),
          ],
        ),
      ),
    );
  }
}
