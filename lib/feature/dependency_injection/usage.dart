import 'package:practices/feature/bloc/counter_cubit.dart';
import 'package:practices/feature/dependency_injection/di_registrar.dart';
import 'package:practices/feature/dependency_injection/module_dependencies.dart';

class PresentationModuleDependencies extends ModuleDependencies {
  @override
  Future<void> register(DIRegistrar di) async {
    di.registerFactory<CounterCubit>(
      () => CounterCubit(di()),
    );
  }
}

// class DataModuleDependencies extends ModuleDependencies {
//   @override
//   Future<void> register(DIRegistrar di) async {
//     final sharedPreferences = await SharedPreferences.getInstance();

//     di.registerFactory<CounterRepository>(
//       () => SharedPreferencesCounterRepository(sharedPreferences),
//     );
//   }
// }