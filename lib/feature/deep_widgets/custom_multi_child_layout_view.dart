import 'package:flutter/material.dart';

final class CustomMultiChildLayoutView extends StatefulWidget {
  const CustomMultiChildLayoutView({super.key});

  @override
  State<CustomMultiChildLayoutView> createState() => _CustomMultiChildLayoutViewState();
}

class _CustomMultiChildLayoutViewState extends State<CustomMultiChildLayoutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomMultiChildLayoutView'),
      ),
      body: CustomMultiChildLayout(
        delegate: CustomMultiChildLayoutDelegate(),
        children: <Widget>[
          LayoutId(
            id: 1,
            child: SizedBox(
              width: 42,
              height: 100,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
          LayoutId(
            id: 2,
            child: SizedBox(
              width: 50,
              height: 50,
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  CustomMultiChildLayoutDelegate();

  @override
  void performLayout(Size size) {
    final BoxConstraints constraints = BoxConstraints.loose(size);
    final Size childSize1 = layoutChild(1, constraints);
    positionChild(1, const Offset(0, 0));
    final Size childSize2 = layoutChild(2, constraints);
    positionChild(
        2, Offset(size.width - childSize2.width, size.height - childSize1.height));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) => false;
}
