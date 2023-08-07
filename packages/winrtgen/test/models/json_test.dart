// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  group('LocalJsonLoader', () {
    test('should load JSON data from a JSON file', () {
      const filePath = 'test/input_data.json';
      final file = File(filePath)..writeAsStringSync('''
{
  "name": "John Doe",
  "age": 30
}
''');

      const jsonLoader = LocalJsonLoader();
      final jsonData = jsonLoader.load(filePath);
      expect(jsonData, isA<Map<String, dynamic>>());
      expect(jsonData.length, equals(2));
      expect(jsonData['name'], equals('John Doe'));
      expect(jsonData['age'], equals(30));

      // Clean up - delete the test input file
      file.deleteSync();
    });

    test('should throw a StateError when loading non-JSON file', () {
      const jsonLoader = LocalJsonLoader();
      expect(() => jsonLoader.load('test/goldens/icalendar.golden'),
          throwsStateError);
    });
  });

  test('FakeJsonLoader should return an empty map for any given file path', () {
    const jsonLoader = FakeJsonLoader();
    final jsonData = jsonLoader.load('any_path/any_file.json');
    expect(jsonData, isA<Map<String, dynamic>>());
    expect(jsonData.isEmpty, isTrue);
  });

  group('LocalJsonSaver', () {
    test('should save JSON data into a file', () {
      const jsonSaver = LocalJsonSaver();
      const jsonData = {'name': 'Jane Smith', 'age': 25};
      const filePath = 'test/output_data.json';

      expect(() => jsonSaver.save(filePath, jsonData), returnsNormally);

      // Verify that the data was saved correctly
      final file = File(filePath);
      final jsonString = file.readAsStringSync();
      final decodedData = json.decode(jsonString) as Map<String, dynamic>;
      expect(decodedData.length, equals(2));
      expect(decodedData['name'], equals('Jane Smith'));
      expect(decodedData['age'], equals(25));

      // Clean up - delete the test output file
      file.deleteSync();
    });

    test('should throw a StateError when saving fails', () {
      const jsonSaver = LocalJsonSaver();
      const jsonData = {'name': 'Jane Smith', 'age': 25};
      const invalidFilePath = 'invalid_path/invalid_file.json';

      expect(() => jsonSaver.save(invalidFilePath, jsonData), throwsStateError);
    });
  });

  test('FakeJsonSaver should not throw any error when saving', () {
    const jsonSaver = FakeJsonSaver();
    const jsonData = {'name': 'Jane Smith', 'age': 25};
    const anyFilePath = 'any_path/any_file.json';

    expect(() => jsonSaver.save(anyFilePath, jsonData), returnsNormally);
    // No actual file is created in the FakeJsonSaver, so no need to verify.
  });
}
