// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

/// A sealed class for loading JSON data from a JSON file into a [Map].
sealed class JsonLoader {
  /// Loads the JSON file located in [path] into a [Map].
  Map<String, dynamic> load(String path);
}

/// A concrete implementation of [JsonLoader] that loads JSON data from a local
/// file on the system.
///
/// Example usage:
/// ```dart
/// final jsonLoader = LocalJsonLoader();
/// final jsonData = jsonLoader.load('path/to/json_file.json');
/// ```
class LocalJsonLoader implements JsonLoader {
  const LocalJsonLoader();

  @override
  Map<String, dynamic> load(String path) {
    try {
      final file = File(path);
      final jsonString = file.readAsStringSync();
      return json.decode(jsonString) as Map<String, dynamic>;
    } catch (e) {
      throw StateError('Failed to load JSON from file: $e');
    }
  }
}

/// A fake implementation of [JsonLoader] used for testing purposes.
///
/// This implementation returns an empty [Map] for any given file path, which
/// can be useful when you want to mock JSON data during testing or when you
/// don't actually need to load any JSON data.
class FakeJsonLoader implements JsonLoader {
  const FakeJsonLoader();

  @override
  Map<String, dynamic> load(String path) => {};
}

/// A sealed class for saving JSON data from a [Map] into a JSON file.
abstract class JsonSaver {
  /// Saves the [map] into the JSON file specified by [path].
  ///
  /// The [indent] parameter specifies the indentation used for the JSON file.
  /// The indentation is four spaces by default.
  void save(String path, Map<String, dynamic> map, {String indent = '    '});
}

/// A concrete implementation of [JsonSaver] that saves JSON data into a local
/// file on the system.
///
/// Example usage:
/// ```dart
/// final jsonSaver = LocalJsonSaver();
/// final jsonData = {'name': 'John Doe', 'age': 30};
/// jsonSaver.save('path/to/output_file.json', jsonData);
/// ```
class LocalJsonSaver implements JsonSaver {
  const LocalJsonSaver();

  @override
  void save(String path, Map<String, dynamic> map, {String indent = '    '}) {
    try {
      final file = File(path);
      final encoder = JsonEncoder.withIndent(indent);
      final jsonString = encoder.convert(map);
      file.writeAsStringSync(jsonString);
    } catch (e) {
      throw StateError('Failed to save JSON to file: $e');
    }
  }
}

/// A fake implementation of [JsonSaver] used for testing purposes.
///
/// This implementation does not perform any actual JSON saving, making it
/// suitable for mocking JSON saving during testing or when you don't need to
/// save JSON data.
class FakeJsonSaver implements JsonSaver {
  const FakeJsonSaver();

  @override
  void save(String path, Map<String, dynamic> map, {String indent = '    '}) {}
}
