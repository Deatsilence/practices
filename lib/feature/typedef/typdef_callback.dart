import 'package:flutter/material.dart';
import 'package:practices/feature/typedef/typedefs.dart';

final class CartAppBar extends StatelessWidget {
  final ProductCountChangedCallback onProductCountChanged;

  const CartAppBar({
    required this.onProductCountChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Cart'),
      actions: [
        CartAppBarProductCountUpdater(
          onProductCountChanged: onProductCountChanged,
        ),
      ],
    );
  }
}

// Some widget to be used under CartAppBar
final class CartAppBarProductCountUpdater extends StatefulWidget {
  // explicit executable type declaration repeated
  final ProductCountChangedCallback onProductCountChanged;

  const CartAppBarProductCountUpdater({
    required this.onProductCountChanged,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _CartAppBarProductCountUpdaterState();
}

final class _CartAppBarProductCountUpdaterState
    extends State<CartAppBarProductCountUpdater> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _quantity--;
              widget.onProductCountChanged(_quantity);
            });
          },
        ),
        Text('$_quantity'),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _quantity++;
              widget.onProductCountChanged(_quantity);
            });
          },
        ),
      ],
    );
  }
}
