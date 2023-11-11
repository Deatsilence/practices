import 'package:flutter/material.dart';
import 'package:practices/feature/snackbar/button_widget.dart';
import 'package:practices/feature/snackbar/snackbar_view.dart';

class OtherPageView extends StatelessWidget {
  const OtherPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text("Other Page"),
          ),
          body: Center(
            child: ButtonWidget(
              text: "Show just in current page Snackbar",
              onPressed: () async {
                const text = "(Just Current)Some information to the user";
                const snackbar = SnackBar(content: Text(text));

                ScaffoldMessenger.of(context).showSnackBar(snackbar);

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SnackbarView()));

                await Future.delayed(const Duration(seconds: 3));
              },
            ),
          ),
        ),
      ),
    );
  }
}
