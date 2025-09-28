extension LMapExtension on Map {
  String getStringVal(dynamic key, [String defaultVal = '']) {
    return getStringValOr(key) ?? defaultVal;
  }

  String? getStringValOr(dynamic key) {
    return this[key]?.toString();
  }

  //---------------------------------

  num getNumVal(dynamic key, [num defaultVal = 0]) {
    return getNumValOr(key) ?? defaultVal;
  }

  num? getNumValOr(dynamic key) {
    if (this[key] is num) return this[key];
    if (this[key] is String) return num.tryParse(this[key]);
    return null;
  }

  //---------------------------------

  int getIntVal(dynamic key, [int defaultVal = 0]) {
    return getIntValOr(key) ?? defaultVal;
  }

  int? getIntValOr(dynamic key) {
    return getNumValOr(key)?.toInt();
  }

  //---------------------------------

  Map getMapVal(dynamic key, [Map defaultVal = const {}]) {
    return getMapValOr(key) ?? defaultVal;
  }

  Map? getMapValOr(dynamic key) {
    if (this[key] is Map) return this[key];
    return null;
  }

  //---------------------------------

  List<T> getListVal<T>(dynamic key, [List defaultVal = const []]) {
    return getListValOr<T>(key) ?? defaultVal.cast<T>();
  }

  List<T>? getListValOr<T>(dynamic key) {
    if (this[key] is List) return this[key].cast<T>();
    return null;
  }

  //---------------------------------

  bool getBoolVal(dynamic key) {
    return getBoolValOr(key) ?? false;
  }

  bool? getBoolValOr(dynamic key) {
    if (this[key] == null) return null;
    if (this[key] is bool) return this[key];
    if (this[key] is num) return this[key] != 0;
    if (this[key] is String) return this[key].isNotEmpty;
    return true;
  }

  //---------------------------------

  T getVal<T>(dynamic key, T defaultVal) {
    return getValOr(key) ?? defaultVal;
  }

  T? getValOr<T>(dynamic key) {
    if (this[key] is T) return this[key];
    return null;
  }
}
