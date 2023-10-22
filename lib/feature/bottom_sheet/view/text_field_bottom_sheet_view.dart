import 'package:flutter/material.dart';
import 'package:practices/feature/bottom_sheet/mixin/text_field_bottom._sheet_view_mixin.dart';

class TextFieldBottomSheetView extends StatefulWidget {
  const TextFieldBottomSheetView({super.key});

  @override
  State<TextFieldBottomSheetView> createState() => _TextFieldBottomSheetViewState();
}

class _TextFieldBottomSheetViewState extends State<TextFieldBottomSheetView> with TextFieldBottomSheetViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: ValueListenableBuilder<String>(
        valueListenable: titleNotifier,
        builder: (context, value, child) {
          return Text(titleNotifier.value);
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showTextfieldBottomSheet(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
