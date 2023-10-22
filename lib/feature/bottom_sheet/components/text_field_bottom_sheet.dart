// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:practices/feature/bottom_sheet/mixin/text_field_bottom_sheet_mixin.dart';
import 'package:practices/feature/bottom_sheet/model/text_field_bottom_sheet_model.dart';

class TextFieldBottomSheet extends StatefulWidget {
  const TextFieldBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFieldBottomSheet> createState() => _TextFieldBottomSheetState();
}

class _TextFieldBottomSheetState extends State<TextFieldBottomSheet> with TextFieldBottomSheetMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: onChangedTextValue,
        ),
        Checkbox.adaptive(
          value: isCheck,
          onChanged: updateCheckBox,
        ),
        ElevatedButton(
          onPressed: onPressedSubmit(context),
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

extension TextFieldBottomSheetExtension on TextFieldBottomSheet {
  static Future<TextFieldBottomSheetModel?> show(BuildContext context) {
    return showModalBottomSheet<TextFieldBottomSheetModel>(
      context: context,
      builder: (context) {
        return const TextFieldBottomSheet();
      },
    );
  }
}
