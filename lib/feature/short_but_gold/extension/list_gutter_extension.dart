import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

extension ListGutter on List<Widget> {
  List<Widget> seperate({double space = 5}) => length <= 1
      ? this
      : sublist(1).fold(
          [first],
          (r, element) => [...r, Gap(space), element],
        );
}
