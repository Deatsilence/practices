import 'package:flutter/material.dart';

class DropDownMenuView extends StatefulWidget {
  const DropDownMenuView({Key? key}) : super(key: key);

  @override
  State<DropDownMenuView> createState() => _DropDownMenuViewState();
}

class _DropDownMenuViewState extends State<DropDownMenuView> {
  final TextEditingController _controller = TextEditingController();
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text('DropDownMenuView'),
      ),
      body: Center(
        child: DropdownMenu(
            controller: _controller,
            searchCallback: (entries, query) {
              if (query.isEmpty) {
                return null;
              }
              final int index = entries.indexWhere((entry) => entry.label == query);

              return index != -1 ? index : null;
            },
            width: MediaQuery.of(context).size.width * 0.8,
            hintText: 'Select a color',
            enableSearch: true,
            onSelected: (color) {
              if (color != null) {
                setState(() {
                  _backgroundColor = color;
                });
              }
            },
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: Colors.grey, label: 'Grey'),
              DropdownMenuEntry(value: Colors.green, label: 'Green'),
              DropdownMenuEntry(value: Colors.blue, label: 'Blue'),
              DropdownMenuEntry(value: Colors.blueGrey, label: 'BlueGrey')
            ],
            inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                  color: Colors.purple,
                  width: 3.0,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 10.0,
                ),
              ),
              labelStyle: TextStyle(color: Colors.purple),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 10.0,
                ),
              ),
            )),
      ),
    );
  }
}
