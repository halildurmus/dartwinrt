// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Deserialize an object from JSON string into a JsonObject and retrieve the
// named values that it contains.
// Example is from:
// https://learn.microsoft.com/en-us/previous-versions/windows/apps/hh770289(v=win.10)

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_data/windows_data.dart';

void main() {
  const jsonString = '''
{
   "width": 800,
   "height": 600,
   "title": "View from 15th Floor",
   "ids": [116, 943, 234, 38793]
}
''';
  final jsonValue = JsonValue.fromPtr(calloc<COMObject>());
  final result = JsonValue.tryParse(jsonString, jsonValue);
  if (!result) {
    print('Failed to parse the JSON string');
    return;
  }

  final jsonObject = jsonValue.getObject();

  final width = jsonObject.getNamedNumber('width');
  print('width: $width');
  final height = jsonObject.getNamedNumber('height');
  print('height: $height');
  final title = jsonObject.getNamedString('title');
  print('title: $title');

  // You can also retrieve values by using the [] operator
  // print(jsonObject['title']!.getString());

  final ids = jsonObject.getNamedArray('ids');
  print('ids: $ids');

  // Convert the JsonArray to a List
  for (final item in ids.toList()) {
    print('Item: ${item.getNumber()}');
  }

  // Convert the JsonObject to a Map
  final map = jsonObject.toMap();
  for (final MapEntry(:key, :value) in map.entries) {
    print('MapEntry($key: ${value?.stringify()})');
  }

  // You can also create a new JsonObject and populate it with new
  // name/JsonValue pairs using the JsonObject.insert method. Once finished,
  // call JsonObject.stringify to serialize the JsonObject as JSON string.

  // final jsonObject = JsonObject()
  //   ..insert('width', JsonValue.createNumberValue(800))
  //   ..insert('height', JsonValue.createNumberValue(600))
  //   ..insert('title', JsonValue.createStringValue('View from 15th Floor'))
  //   ..insert('ids', JsonValue.parse('[116, 943, 234, 38793]'));
  // final jsonString = jsonObject.stringify();
  // print('JSON string: $jsonString');
}
