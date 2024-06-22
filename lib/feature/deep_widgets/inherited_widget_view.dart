import 'package:flutter/material.dart';
import 'package:practices/feature/deep_widgets/deep_widget_helper.dart';

final class InheritedWidgetView extends StatefulWidget {
  const InheritedWidgetView({super.key});

  @override
  State<InheritedWidgetView> createState() => _InheritedWidgetViewState();
}

class _InheritedWidgetViewState extends State<InheritedWidgetView> {
  @override
  Widget build(BuildContext context) {
    /// InheritedWidget
    final theme = CustomTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('DeepWidgetsView'),
      ),
      body: Center(
        child: Text(
          'Color: ${theme?.color}',
          style: TextStyle(
            color: theme?.color,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
