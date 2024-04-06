import 'package:flutter/material.dart';
import 'package:practices/feature/async_operations/async_op.dart';

final class AsyncView extends StatefulWidget {
  const AsyncView({super.key});

  @override
  State<AsyncView> createState() => _AsyncViewState();
}

class _AsyncViewState extends State<AsyncView> {
  @override
  void initState() {
    super.initState();
    A.main();
    B.main();
    C.main();
    D.main();
    E.main();
    F.main();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
