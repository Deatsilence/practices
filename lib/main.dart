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
import 'package:practices/feature/deep_widgets/baseline_view.dart';
import 'package:practices/feature/deep_widgets/constrained_box_view.dart';
import 'package:practices/feature/deep_widgets/custom_list_wheel_scroll_view.dart';
import 'package:practices/feature/deep_widgets/custom_multi_child_layout_view.dart';
import 'package:practices/feature/deep_widgets/custom_reorderable_listview_view.dart';
import 'package:practices/feature/deep_widgets/draggable_and_dragtarget_view.dart';
import 'package:practices/feature/deep_widgets/fitted_box_view.dart';
import 'package:practices/feature/deep_widgets/flow_view.dart';
import 'package:practices/feature/deep_widgets/fractionally_sizedbox_view.dart';
import 'package:practices/feature/deep_widgets/inherited_widget_view.dart';
import 'package:practices/feature/deep_widgets/interactive_viewer_view.dart';
import 'package:practices/feature/deep_widgets/keyed_subtree_view.dart';
import 'package:practices/feature/deep_widgets/limited_box_view.dart';
import 'package:practices/feature/deep_widgets/offstage_view.dart';
import 'package:practices/feature/deep_widgets/shader_mask_view.dart';
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
      home: const BaselineView(),
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
