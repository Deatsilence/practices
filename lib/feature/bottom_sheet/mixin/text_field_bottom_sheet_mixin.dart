import 'package:flutter/material.dart';
import 'package:practices/feature/bottom_sheet/components/text_field_bottom_sheet.dart';
import 'package:practices/feature/bottom_sheet/model/text_field_bottom_sheet_model.dart';

mixin TextFieldBottomSheetMixin on State<TextFieldBottomSheet> {
  String textValue = "";
  bool isCheck = false;

  bool get isValid => isCheck && textValue.isNotEmpty;

  VoidCallback? onPressedSubmit(BuildContext context) {
    if (!isValid) return null;

    return () {
      Navigator.pop(context, TextFieldBottomSheetModel(textValue, isCheck));
    };
  }

  void onChangedTextValue(String value) => setState(
        () {
          textValue = value;
        },
      );

  void updateCheckBox(bool? value) {
    if (value == null) return;
    setState(() {
      isCheck = value;
    });
  }
}
