import 'dart:async';

import 'package:benchmark_harness/benchmark_harness.dart';

final class A extends BenchmarkBase {
  const A() : super('A');

  static void main() {
    const A().report();
  }

  void a() {} // does nothing

  @override
  void run() => a(); // here

  @override
  void exercise() {
    for (var i = 0; i < 10; i++) {
      run();
    }
  }
}

final class B extends BenchmarkBase {
  const B() : super('B');

  static void main() {
    const B().report();
  }

  Future<void> b() async {} // does nothing

  @override
  void run() => b(); // here

  @override
  void exercise() {
    for (var i = 0; i < 10; i++) {
      run();
    }
  }
}

final class C extends BenchmarkBase {
  const C() : super('C');

  static void main() {
    const C().report();
  }

  Future<void> c() async {} // does nothing

  @override
  Future<void> run() async => await c(); // async and await

  @override
  void exercise() {
    for (var i = 0; i < 10; i++) {
      run();
    }
  }
}

final class D extends BenchmarkBase {
  const D() : super('D');

  static void main() {
    const D().report();
  }

  Future<void> d() async {} // does nothing

  @override
  void run() => unawaited(d()); // unawaited

  @override
  void exercise() {
    for (var i = 0; i < 10; i++) {
      run();
    }
  }
}

final class E extends BenchmarkBase {
  const E() : super('E');

  static void main() {
    const E().report();
  }

  Future<int> fastestBranch(Future<int> left, Future<int> right) async {
    await Future.delayed(const Duration(seconds: 3));
    return Future.any([left, right]);
  }

  @override
  void run() {
    fastestBranch(Future.value(1), Future.value(2));
  }

  @override
  void exercise() {
    run();
  }
}

final class F extends BenchmarkBase {
  const F() : super('F');

  static void main() {
    const F().report();
  }

  Future<int> fastestBranchWithoutAsync(Future<int> left, Future<int> right) {
    Future.delayed(const Duration(seconds: 3));
    return Future.any([left, right]);
  }

  @override
  void run() {
    fastestBranchWithoutAsync(Future.value(1), Future.value(2));
  }

  @override
  void exercise() {
    run();
  }
}
