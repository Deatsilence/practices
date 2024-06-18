// import 'package:flutter/material.dart';
// import 'package:practices/feature/async_operations/async_view.dart';
// import 'package:practices/feature/widget/drop_down_menu.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Material App',
//       home: AsyncView(),
//     );
//   }
// }

/// BLOC

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practices/feature/bloc/counter_cubit.dart';
import 'package:practices/feature/bloc/home_view.dart';
import 'package:practices/feature/typedef/typedef_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const TypedefView(),
      // BlocProvider<CounterCubit>(
      //   create: (context) => CounterCubit(),
      //   child: const HomeView(
      //     title: 'Flutter Demo Home Page',
      //     color: Colors.amber,
      //   ),
      // ),
    );
  }
}
