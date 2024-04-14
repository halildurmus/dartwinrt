// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

import '../extensions/extensions.dart';
import 'json.dart';
import 'type_analyzer.dart';

/// A sealed class representing an asset manager for JSON-based data storage.
///
/// This class is responsible for loading, modifying, and saving JSON data into
/// a specified file.
///
/// It uses [JsonLoader] to load JSON data from the file and [JsonSaver] to
/// save JSON data back to the file.
sealed class AssetManager {
  /// Creates an [AssetManager] instance with the given [path].
  ///
  /// The [jsonLoader] and [jsonSaver] parameters are optional and default to
  /// [LocalJsonLoader] and [LocalJsonSaver] instances, respectively. These can
  /// be customized for different loading and saving behaviors.
  ///
  /// The JSON file specified in [path] is expected to have keys of type
  /// [String] (representing WinRT types e.g., `Windows.Foundation.Uri`) and
  /// values of type [String] (representing comments associated with the types).
  AssetManager({
    required this.path,
    this.jsonLoader = const LocalJsonLoader(),
    this.jsonSaver = const LocalJsonSaver(),
  }) : _types = SplayTreeMap<String, String>.of(jsonLoader.load(path).cast());

  /// The [JsonLoader] instance used to load JSON data from the file.
  final JsonLoader jsonLoader;

  /// The [JsonSaver] instance used to save JSON data back to the file.
  final JsonSaver jsonSaver;

  /// The path of the JSON file to load (e.g., `assets/enums.json`).
  final String path;

  final SplayTreeMap<String, String> _types;

  /// Adds the [type] into the JSON file with an optional [comment].
  ///
  /// If the [type] was already in the JSON file, its associated comment is
  /// changed.
  void add(String type, {String comment = ''}) {
    _throwIfNotWinRTType(type);
    types[type] = comment;
    jsonSaver.save(path, types);
  }

  /// Adds all the entries from [other] into the JSON file.
  ///
  /// The [other] parameter should be a map with keys representing fully
  /// qualified types (e.g., `Windows.Foundation.Uri`) and values representing
  /// comments associated with the types.
  void addAll(Map<String, String> other) {
    for (final entry in other.entries) {
      if (!entry.key.isWinRTType) {
        throw ArgumentError(
            'Type must be a WinRT type (e.g., Windows.Foundation.Uri)');
      }
      types[entry.key] = entry.value;
    }
    jsonSaver.save(path, types);
  }

  /// Removes all entries from the JSON file.
  void clear() {
    types.clear();
    jsonSaver.save(path, types);
  }

  /// Whether the JSON file contains the given [type] key.
  bool contains(String type) => types.containsKey(type);

  /// The number of key/value pairs present in the JSON file.
  int get length => types.length;

  /// Removes the specified [type] and its associated value from the JSON file.
  void remove(String type) {
    _throwIfNotWinRTType(type);
    types.remove(type);
    jsonSaver.save(path, types);
  }

  /// A map containing the loaded JSON data from the JSON file, where keys are
  /// the WinRT types (e.g., `Windows.Foundation.Uri`) and values are their
  /// corresponding comments.
  ///
  /// The map is sorted by its keys in ascending order.
  Map<String, String> get types => _types;

  /// Returns a set of WinRT types that have no associated comments.
  Set<String> get typesWithoutComments => types.entries
      .where((entry) => entry.value.isEmpty)
      .map((entry) => entry.key)
      .toSet();

  /// The associated comment for the given [type], or `null` if [type] is not in
  /// the JSON file.
  String? operator [](String type) {
    _throwIfNotWinRTType(type);
    return types[type];
  }

  /// Adds the [type] and its associated [comment] into the JSON file.
  ///
  /// If the [type] was already in the JSON file, its associated comment is
  /// changed.
  void operator []=(String type, String comment) {
    _throwIfNotWinRTType(type);
    types[type] = comment;
    jsonSaver.save(path, types);
  }

  /// Throws an [ArgumentError] if this string does not represent a fully
  /// qualified type.
  void _throwIfNotWinRTType(String type) {
    if (!type.isWinRTType) {
      throw ArgumentError.value(type, 'type',
          'Type must be a WinRT type (e.g., Windows.Foundation.Uri)');
    }
  }
}

/// A concrete implementation of [AssetManager] for managing the
/// `assets/enums.json` file.
class EnumManager extends AssetManager {
  EnumManager({
    super.path = 'assets/enums.json',
    super.jsonLoader,
    super.jsonSaver,
  });
}

/// A concrete implementation of [AssetManager] for managing the
/// `assets/objects.json` file.
class ObjectManager extends AssetManager {
  ObjectManager({
    super.path = 'assets/objects.json',
    super.jsonLoader,
    super.jsonSaver,
  });

  /// Returns a set of WinRT runtime classes present in the JSON file.
  Set<String> get classes => types.keys
      .map((type) => TypeAnalyzer.fromType(type).isClass ? type : null)
      .whereType<String>()
      .toSet();

  /// Returns a set of WinRT interfaces present in the JSON file.
  Set<String> get interfaces => types.keys
      .map((type) => TypeAnalyzer.fromType(type).isInterface ? type : null)
      .whereType<String>()
      .toSet();
}

/// A concrete implementation of [AssetManager] for managing the
/// `assets/structs.json` file.
class StructManager extends AssetManager {
  StructManager({
    super.path = 'assets/structs.json',
    super.jsonLoader,
    super.jsonSaver,
  });
}
