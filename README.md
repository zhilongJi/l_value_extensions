# l_value_extensions

## Features

dart中值的快捷取值或操作扩展。

## Getting started

```bash
flutter pub add l_value_extensions
```

## Usage


```dart
import 'package:l_value_extensions/l_value_extensions.dart';
const map = {
  'key1': '1',
};
final val = map.getIntVal('key1'); // returns 1
```

更多用法请参考定义