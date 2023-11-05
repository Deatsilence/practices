import 'package:flutter/material.dart';
import 'package:practices/feature/short_but_gold/model/book_model.dart';
import 'package:practices/feature/short_but_gold/viewModel/safe_json_decode_book_view_model.dart';

class SafeJsonDecodeBookView extends StatefulWidget {
  const SafeJsonDecodeBookView({super.key});

  @override
  State<SafeJsonDecodeBookView> createState() => _SafeJsonDecodeBookViewState();
}

class _SafeJsonDecodeBookViewState extends State<SafeJsonDecodeBookView> {
  final safeJsonDecodeBookViewModel = SafeJsonDecodeBookViewModel();
  Book? response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          response = await safeJsonDecodeBookViewModel.safeJsonDecodeBook();
          setState(() {});
        },
        label: const Text("Show"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(response?.name ?? "unknown"),
            subtitle: Text(response?.author ?? "unknown"),
          ),
        ],
      ),
    );
  }
}
