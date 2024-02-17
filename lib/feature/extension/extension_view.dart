import 'package:flutter/material.dart';
import 'package:practices/feature/extension/extension_type.dart';

final class ExtensionView extends StatelessWidget {
  const ExtensionView({super.key});

  @override
  Widget build(BuildContext context) {
    //! Extension type IdNumber
    int myUnsafeId = 42424242;
    myUnsafeId = myUnsafeId + 10; // This works, but shouldn't be allowed for IDs.

    var safeId = IdNumber(42424242);
    // safeId + 10; // Compile-time error: No '+' operator.
    // myUnsafeId = safeId; // Compile-time error: Wrong type.
    myUnsafeId = safeId as int; // OK: Run-time cast to representation type.
    var isBigger = safeId < IdNumber(42424243); // OK: Uses wrapped '<' operator.
    debugPrint("isBigger: $isBigger");

    //! Extension type E
    debugPrint("E: ${E(10)}");

    //! Extension type R
    debugPrint("R: ${R([IdNumber(23), 2, 3])}");
    debugPrint("R: ${R<bool>([true, false, true])}");

    //! Extension type M
    debugPrint("M: ${M(10)}");
    debugPrint("M: ${M.n(i: 42)}");
    debugPrint("M: ${M.q(j: 42, foo: 'foo')}");

    //! Extension type C
    debugPrint("C: ${C()}");
    debugPrint("C: ${C.otherName('Mete')}");
    // const C._("Hulya"); // it doesn't work

    //! Extension type K
    debugPrint("K: ${K(10)}");
    debugPrint("K: ${K.fromString('42')}");

    //! Extension type NumberE
    debugPrint("NumberE: ${NumberE(11)}");
    debugPrint("NumberE: ${NumberE(12).myNum}");
    debugPrint("NumberE: ${NumberE(2).isValid()}");

    var num1 = NumberE(1);
    // int num2 = NumberE(2); // Error: Can't assign 'NumberE' to 'int'.

    num1.isValid(); // OK: Extension member invocation.
    // num.isNegative(); // Error: 'NumberE' does not define 'int' member 'isNegative'.

    var sum1 = num1 + num1; // OK: 'NumberE' defines '+'.
    // var diff1 = num1 - num1; // Error: 'NumberE' does not define 'int' member '-'.
    var diff2 = num1.value - 2; // OK: Can access representation object with reference.
    // var sum2 = num1 + 2; // Error: Can't assign 'int' to parameter type 'NumberE'.

    List<NumberE> numbers = [
      NumberE(1),
      num1.myNum, // OK: 'next' getter returns type 'NumberE'.
      // 1, // Error: Can't assign 'int' element to list type 'NumberE'.
    ];

    //! Extension type NumberI
    debugPrint("NumberI: ${NumberI(10)}");
    // All OK: Transparency allows invoking `int` members on the extension type:
    var v1 = NumberI(1); // v1 type: NumberT
    int v2 = NumberI(2); // v2 type: int
    var v3 = v1.i - v1; // v3 type: int
    var v4 = v2 + v1; // v4 type: int
    var v5 = 2 + v1; // v5 type: int
    // Error: Extension type interface is not available to representation type
    // v2.i;

    //! Extension type Sequence
    debugPrint("Sequence: ${Sequence<int>([1, 2, 2])}");
    debugPrint("Normal List: ${<int>[1, 2, 2]}");

    //! Extension type Id
    debugPrint("Id: ${Id(10)}");
    debugPrint("Id: ${Id.tryParse('10')}");

    //! Extension type Opt
    debugPrint("Opt: ${const Opt(10)}");
    debugPrint("Opt: ${const Opt.none()}");
    debugPrint("Opt: ${const Val(10)}");

    //! Extension type MyString
    debugPrint("MyString: ${MyString('Alert')[0]}");

    //! Type considerations
    var n = NumberE(1);

    // Run-time type of 'n' is representation type 'int'.
    if (n is int) debugPrint("n.value: ${n.value}"); // Prints 1.

    // Can use 'int' methods on 'n' at run time.
    if (n case int x) debugPrint("x.toRadixString: ${x.toRadixString(10)}"); // Prints 1.
    switch (n) {
      case int(:var isEven):
        debugPrint("$n (${isEven ? "even" : "odd"})"); // Prints 1 (odd).
    }

    int x = 2;
    if (x is NumberI) debugPrint("It is"); // debugPrints 'It is'.
    if (x case NumberI v) debugPrint("value: ${v.i}"); // Prints 'i: 2'.
    switch (x) {
      case NumberI(:var i):
        debugPrint("value: $i"); // Prints 'value: 2'.
    }

    return const Scaffold();
  }
}
