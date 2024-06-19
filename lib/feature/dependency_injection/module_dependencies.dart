import 'package:practices/feature/dependency_injection/di_registrar.dart';

abstract class ModuleDependencies {
  Future<void> register(DIRegistrar di);

  Future<void> runPostRegistrationActions(DIRegistrar di) => Future.value();
}
