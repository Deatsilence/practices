import 'package:flutter/material.dart';
import 'package:practices/feature/short_but_gold/model/user_model.dart';
import 'package:practices/feature/short_but_gold/viewModel/make_safe_custom_user_view_model.dart';

class MakeSafeCustomUserView extends StatefulWidget {
  const MakeSafeCustomUserView({super.key});

  @override
  State<MakeSafeCustomUserView> createState() => _MakeSafeCustomUserViewState();
}

class _MakeSafeCustomUserViewState extends State<MakeSafeCustomUserView> {
  final _makeSafeCustomUserViewModel = MakeSafeCustomUserViewModel();
  List<User> users = [];

  @override
  void initState() {
    _makeSafeCustomUserViewModel.makeSafeList().then((value) => users = value);
    super.initState();
  }

  Future<void> refresh() async {
    Future.delayed(const Duration(milliseconds: 100));

    _makeSafeCustomUserViewModel.makeSafeList().then((value) => users = value);
    debugPrint(users.length.toString());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Make Safe Custom User"),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: refresh,
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(users[index].name!),
              subtitle: Text(users[index].age!),
            );
          },
        ),
      ),
    );
  }
}
