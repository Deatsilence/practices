import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practices/feature/short_but_gold/extension/list_gutter_extension.dart';
import 'package:practices/feature/snackbar/button_widget.dart';
import 'package:practices/feature/snackbar/other_page_view.dart';

class SnackbarView extends StatefulWidget {
  const SnackbarView({super.key});

  @override
  State<SnackbarView> createState() => _SnackbarViewState();
}

class _SnackbarViewState extends State<SnackbarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonWidget(
              text: "Simple Snackbar",
              onPressed: () async {
                const text = "(Simple)Important Message";
                const snackbar = SnackBar(content: Text(text));

                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackbar);

                await Future.delayed(const Duration(seconds: 2));
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OtherPageView(),
                ));
              },
            ),
            ButtonWidget(
              text: "Action Snackbar",
              onPressed: () {
                const text = "(Action)Some information to the user";
                final snackbar = SnackBar(
                  duration: const Duration(seconds: 10),
                  content: const Text(text),
                  action: SnackBarAction(
                    label: "Dismiss",
                    onPressed: () {},
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
            ),
            ButtonWidget(
              text: "Async Snackbar",
              onPressed: () {
                const text = "(Async)Some information to the user";
                const snackbar = SnackBar(content: Text(text));

                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              },
            ),
          ].seperate(),
        ),
      ),
    );
  }
}
