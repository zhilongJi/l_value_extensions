extension LStringExtension on String {
  /// 当字符串为空时返回null，否则返回自身，方便使用`??`
  String? get valueOr => isEmpty ? null : this;
}
