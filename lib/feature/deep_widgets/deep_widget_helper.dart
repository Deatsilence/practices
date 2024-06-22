import 'package:flutter/material.dart';

/// InheritedWidget
final class CustomTheme extends InheritedWidget {
  final Color color;

  const CustomTheme({super.key, required this.color, required Widget child})
      : super(child: child);

  static CustomTheme? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CustomTheme>();
  }

  @override
  bool updateShouldNotify(CustomTheme old) => color != old.color;
}
