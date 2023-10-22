/// The code is defining an extension called `IterableExtension` on the `Iterable<T?>` class. This
/// extension adds a new method called `makeSafeCustom` to all instances of `Iterable<T?>`.
extension IterableExtension<T> on Iterable<T?> {
  List<T> makeSafeCustom(bool Function(T? value) onHandle) => where(onHandle).cast<T>().toList();
}
