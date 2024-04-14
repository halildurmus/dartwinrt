// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';

void main() {
  // Create an empty IMap
  final map = IMap<String, String>.empty()
    // Insert some items
    ..insert('England', 'London')
    ..insert('France', 'Paris')
    ..insert('Türkiye', 'Istanbul')
    ..insert('United States', 'Washington DC');

  // You can also use the `fromMap` constructor to create an IMap from an
  // existing Dart Map
  // final map = IMap<String, String>.fromMap({
  //   'England': 'London',
  //   'France': 'Paris',
  //   'Türkiye': 'Istanbul',
  //   'United States': 'Washington DC'
  // });

  // Get the size of the IMap
  print('IMap has ${map.size} items');

  // Retrieve the item using the lookup method
  print('The capital of the United States is ${map.lookup('United States')}.');

  // You can also retrieve the item by using the [] operator
  print('The capital of the France is ${map['France']}.');

  // Attempting to retrieve a non-existent item throws a WindowsException
  try {
    map.lookup('non-existent key');
  } on WindowsException catch (e) {
    print('Attempting to retrieve a non-existent item failed with: $e');
  }

  // Check if IMap contains a specific key
  print(map.hasKey('Türkiye'));

  // Update an existing item using insert method
  map.insert('United States', 'Washington, DC');

  // You can also update an existing item by using the []= operator
  // map['United States'] = 'Washington, DC';

  // Convert the IMap into a Dart Map
  print(map.toMap());

  // Remove an item
  map.remove('England');

  // Attempting to remove a non-existent item throws a WindowsException
  try {
    map.remove('non-existent key');
  } on WindowsException catch (e) {
    print('Attempting to remove a non-existent item failed with: $e');
  }
}
