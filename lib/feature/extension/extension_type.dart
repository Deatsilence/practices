import 'package:meta/meta.dart';

extension type IdNumber(int id) {
  // Wraps the 'int' type's '<' operator:
  operator <(IdNumber other) => id < other.id;
  // Doesn't declare the '+' operator, for example,
  // because addition does not make sense for ID numbers.
}

extension type E(int i) {}

extension type R<T>(List<T> elements) {}

extension type M(int i) {
  M.n({required this.i});
  M.q({required int j, required String foo}) : i = j + foo.length;
}

extension type const C._(String it) {
  C() : this._('Mert');
  C.otherName(this.it);
}

extension type K(int i) {
  K.fromString(String foo) : i = int.parse(foo);
}

extension type NumberE(int value) {
  /// Operator:
  NumberE operator +(NumberE other) => NumberE(value + other.value);

  /// Getter:
  NumberE get myNum => this;

  /// Method:
  bool isValid() => !value.isNegative;
}

extension type NumberI(int i) implements int {
  // 'NumberI' can invoke all members of 'int',
  // plus anything else it declares here.
  NumberI get a => this;
}

extension type Sequence<T>(List<T> _) implements Iterable<T> {
  // Better operations than List.
}

extension type Id(int _id) implements Object {
  // Makes the extension type non-nullable.
  static Id? tryParse(String source) => int.tryParse(source) as Id?;
}

extension type const Opt<T>._(({T value})? _) {
  const factory Opt(T value) = Val<T>;
  const factory Opt.none() = Non<T>;
}

extension type const Val<T>._(({T value}) _) implements Opt<T> {
  const Val(T value) : this._((value: value));
  T get value => _.value;
}

extension type const Non<T>._(Null _) implements Opt<Never> {
  const Non() : this._(null);
}

extension type MyString(String _) implements String {
  // Replaces 'String.operator[]'
  @redeclare
  int operator [](int index) => codeUnitAt(index);
}
