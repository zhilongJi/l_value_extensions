extension LMapExtension on Map {
  String getStringVal(String key, [String defaultVal = '']) {
    return getStringValOr(key) ?? defaultVal;
  }

  String? getStringValOr(dynamic key) {
    return this[key]?.toString();
  }

  //---------------------------------

  num getNumVal(String key, [num defaultVal = 0]) {
    return getNumValOr(key) ?? defaultVal;
  }

  num? getNumValOr(String key) {
    if (this[key] is num) return this[key];
    if (this[key] is String) return num.tryParse(this[key]);
    return null;
  }

  //---------------------------------

  int getIntVal(String key, [int defaultVal = 0]) {
    return getIntValOr(key) ?? defaultVal;
  }

  int? getIntValOr(String key) {
    return getNumValOr(key)?.toInt();
  }

  //---------------------------------

  Map getMapVal(String key, [Map defaultVal = const {}]) {
    return getMapValOr(key) ?? defaultVal;
  }

  Map? getMapValOr(String key) {
    if (this[key] is Map) return this[key];
    return null;
  }

  //---------------------------------

  List<T> getListVal<T>(String key, [List defaultVal = const []]) {
    return getListValOr<T>(key) ?? defaultVal.cast<T>();
  }

  List<T>? getListValOr<T>(String key) {
    if (this[key] is List) return this[key].cast<T>();
    return null;
  }

  //---------------------------------

  bool getBoolVal(String key) {
    return getBoolValOr(key) ?? false;
  }

  bool? getBoolValOr(String key) {
    if (this[key] == null) return null;
    if (this[key] is bool) return this[key];
    if (this[key] is num) return this[key] != 0;
    if (this[key] is String) return this[key].isNotEmpty;
    return true;
  }

  //---------------------------------

  T getVal<T>(String key, T defaultVal) {
    return getValOr(key) ?? defaultVal;
  }

  T? getValOr<T>(String key) {
    if (this[key] is T) return this[key];
    return null;
  }
}
