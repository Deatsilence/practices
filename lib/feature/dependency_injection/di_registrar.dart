import 'dart:async';

import 'package:practices/feature/dependency_injection/di.dart';

typedef FactoryFunc<T> = T Function();
typedef FactoryWithParamFunc<T, P> = T Function(P param);
typedef DisposingFunc<T> = FutureOr<void> Function(T instance);

abstract interface class DIRegistrar implements DI {
  void registerFactory<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
  });

  void registerFactoryWithParam<T extends Object, P1>(
    FactoryWithParamFunc<T, P1> factoryFunc, {
    String? instanceName,
  });

  void registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
    DisposingFunc<T>? disposingFunc,
  });

  void registerLazySingleton<T extends Object>(
    FactoryFunc<T> factoryFunc, {
    String? instanceName,
    DisposingFunc<T>? disposingFunc,
  });
}
