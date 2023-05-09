// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  // Create an empty IMap
  final map = IMap<String, String>.empty();

  // You can also use the fromMap factory constructor to create an IMap from an
  // existing Dart Map
  // final map = IMap<String, String>.fromMap({'key': 'value'});

  // Insert an item into the IMap
  final result = map.insert('key', 'value');
  switch (result) {
    case true:
      print('"value" replaced an existing value in IMap');
    case false:
      print('"value" inserted to IMap');
  }

  // Get the size of the IMap
  print('Size: ${map.size}');

  // Retrieve the item using the lookup method
  print('key: ${map.lookup('key')}');

  // You can also use the [] operator
  // print('key: ${map['key']}');

  // Attempting to retrieve a non-existent item throws a WindowsException
  try {
    map.lookup('non-existent key');
  } on WindowsException catch (e) {
    print('WindowsException: $e');
  }

  // Check if IMap contains a specific key
  print('Does IMap contains a "key": ${map.hasKey('key')}');

  // Update the item using insert method
  map.insert('key', 'new value');

  // You can also use the []= operator
  // map['key'] = 'new value';

  // Convert it to a Dart Map
  final dartMap = map.toMap();
  for (final MapEntry(:key, :value) in dartMap.entries) {
    print('MapEntry($key: $value)');
  }

  // Remove the item
  map.remove('key');
}
