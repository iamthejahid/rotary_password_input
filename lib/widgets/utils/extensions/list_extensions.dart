extension ListExtension<T> on List<T> {
  List<T> addBetween(T separator) {
    if (length <= 1) {
      return toList();
    }

    final newItem = <T>[];

    for (int i = 0; i < length; i++) {
      newItem.add(this[i]);
      newItem.add(separator);
    }
    newItem.add(this[length - 1]);
    return newItem;
  }
}
