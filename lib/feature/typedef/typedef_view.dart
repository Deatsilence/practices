import 'package:flutter/material.dart';
import 'package:practices/feature/typedef/typedefs.dart';

final class TypedefView extends StatelessWidget {
  const TypedefView({super.key});

  @override
  Widget build(BuildContext context) {
    StringReferance stringReferance = 'StringReferance';
    Strings strings = List.generate(
      100,
      (index) => (index * index).toString(),
    );
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('Typedef View'),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: strings.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(strings.elementAt(index)),
                  );
                },
              ),
            ),
            Text(stringReferance),
          ],
        ),
      ),
    );
  }
}
