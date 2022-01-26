extension ListExtension<T> on List<T> {
  List<T> replaceWhere(
      bool Function(T element) predicate, T Function(T value) replace) {
    return map(
      (element) => predicate(element) ? replace(element) : element,
    ).toList();
  }
}
