extension ListExtension<E> on List<E> {
  E? getItem(int? index) {
    if (index == null) return null;
    if (index > length - 1 || index < 0) return null;
    return this[index];
  }

  /// 获取排序后的新数组
  List<E> sorted([int Function(E a, E b)? compare]) =>
      List.from(this)..sort(compare);
}
