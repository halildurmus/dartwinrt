// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Example is based on:
// https://learn.microsoft.com/previous-versions/windows/apps/hh770289(v=win.10)

import 'package:windows_data/windows_data.dart';

void main() {
  const jsonString =
      '{"width": 800,"height": 600,"title": "View from 15th Floor","ids": [116, 943, 234, 38793]}';
  final jsonValue = JsonValue.parse(jsonString);

  if (jsonValue case final jsonValue?) {
    final jsonObject = jsonValue.getObject();
    final width = jsonObject.getNamedNumber('width');
    print('width: $width');
    final height = jsonObject.getNamedNumber('height');
    print('height: $height');
    final title = jsonObject.getNamedString('title');
    print('title: $title');

    // You can also retrieve values by using the [] operator
    // print(jsonObject['title']?.getString());

    final ids = jsonObject.getNamedArray('ids');
    print('ids: $ids');
  }

  // You can also create a new JsonObject and populate it with new
  // name/JsonValue pairs using the JsonObject.insert method. Once finished,
  // call JsonObject.stringify to serialize the JsonObject as JSON string.

  final jsonObject = JsonObject()
    ..insert('width', JsonValue.createNumberValue(800))
    ..insert('height', JsonValue.createNumberValue(600))
    ..insert('title', JsonValue.createStringValue('View from 15th Floor'))
    ..insert('ids', JsonValue.parse('[116, 943, 234, 38793]'));
  print('JSON string:');
  print(jsonObject.stringify());
}
