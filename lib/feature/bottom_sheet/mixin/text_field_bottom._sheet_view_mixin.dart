import 'package:flutter/material.dart';
import 'package:practices/feature/bottom_sheet/components/text_field_bottom_sheet.dart';
import 'package:practices/feature/bottom_sheet/view/text_field_bottom_sheet_view.dart';

mixin TextFieldBottomSheetViewMixin on State<TextFieldBottomSheetView> {
  final ValueNotifier<String> titleNotifier = ValueNotifier<String>("TextField Bottom Sheet");

  Future<void> showTextfieldBottomSheet() async {
    final response = await TextFieldBottomSheetExtension.show(context);

    if (response == null) return;

    titleNotifier.value = response.value;
  }
}
