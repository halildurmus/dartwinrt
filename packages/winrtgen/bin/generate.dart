// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winrtgen/winrtgen.dart';

final formatter = DartFormatter();

({
  Map<String, String> objects,
  Map<String, String> enums,
  Map<String, String> structs
}) loadJsonFiles() {
  final objects = loadMap('objects.json');
  final enums = loadMap('enums.json');
  final structs = loadMap('structs.json');
  saveMap(objects, 'objects.json');
  saveMap(enums, 'enums.json');
  saveMap(structs, 'structs.json');
  return (objects: objects, enums: enums, structs: structs);
}

/// Creates a file at the given [path] and writes the formatted [content] to it.
///
/// If the [content] cannot be formatted, it will be written as unformatted.
void writeToFile(String path, String content) {
  try {
    File(path)
      ..createSync(recursive: true)
      ..writeAsStringSync(formatter.format(content));
  } catch (_) {
    // Better to write even on failure, so we can figure out what syntax error
    // it was that thwarted DartFormatter.
    print('Unable to format file. Writing unformatted...');
    File(path)
      ..createSync(recursive: true)
      ..writeAsStringSync(content);
  }
}

void generateObjects(Map<String, String> types) {
  // Catalog all the types we need to generate: the types themselves and their
  // dependencies
  final typesAndDependencies = <String>{};

  for (final type in types.keys) {
    final typeDef = getMetadataForType(type);
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef)
        : ClassProjection(typeDef);

    typesAndDependencies.addAll({
      // The type itself, e.g. 'Windows.Globalization.Calendar'
      type,

      // Interfaces that the type implements e.g.'Windows.Globalization.ICalendar'
      ...projection.typeDef.interfaces.map((interface) => interface.name),

      // The type's factory and static interfaces e.g.
      // 'Windows.Globalization.ICalendarFactory'
      if (projection is ClassProjection) ...projection.factoryInterfaces,
      if (projection is ClassProjection) ...projection.staticInterfaces
    });
  }

  typesAndDependencies
    // Remove generic interfaces as they are projected manually
    ..removeWhere((type) => type.isEmpty)
    // Remove excluded WinRT types
    ..removeWhere((type) => excludedObjects.contains(type));

  // Generate the type projection for each type
  for (final type in typesAndDependencies) {
    final typeDef = getMetadataForType(type);
    final comment = types[type] ?? '';
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef, comment: comment)
        : ClassProjection(typeDef, comment: comment);
    final path = relativePathForType(type);
    writeToFile(path, projection.toString());
  }
}

void generateConcreteClassesForGenericInterfaces(
    List<GenericType> genericTypes) {
  for (final genericType in genericTypes) {
    final type = genericType.fullyQualifiedType;
    final projection = GenericInterfacePartFileProjection(genericType);
    final path = relativePathForType(type).replaceFirst('.dart', '_part.dart');
    writeToFile(path, projection.toString());
  }
}

void generateEnumerations(Map<String, String> enums) {
  for (final type in enums.keys) {
    final projection = EnumProjection.from(type, comment: enums[type] ?? '');
    final path = relativePathForType(type);
    writeToFile(path, projection.toString());
  }
}

void generateStructs(Map<String, String> structs) {
  final nativeStructProjections = SplayTreeSet<NativeStructProjection>(
      (a, b) => a.typeDef.shortName.compareTo(b.typeDef.shortName));

  for (final type in structs.keys) {
    final nativeStructProjection = NativeStructProjection.from(type);
    nativeStructProjections.add(nativeStructProjection);
    final structProjection =
        StructProjection.from(type, comment: structs[type] ?? '');
    final path = relativePathForType(type);
    writeToFile(path, structProjection.toString());
  }

  final nativeStructsFilePath =
      '../../packages/windows_foundation/lib/src/internal/native_structs.g.dart';
  final nativeStructsFileContent =
      [nativeStructsFileHeader, ...nativeStructProjections].join();
  writeToFile(nativeStructsFilePath, nativeStructsFileContent);
}

void generateLibraryExports() {
  for (final packageName in packageNames) {
    final packagePath = '../$packageName/lib/src/';
    final dir = Directory(packagePath);
    final files =
        dir.listSync(recursive: true, followLinks: false).whereType<File>();
    final exports = <String>{};

    for (final file in files) {
      if (packageName == 'windows_foundation') {
        // Skip internally used files
        if (file.path.contains(r'internal\')) continue;

        // Skip generated part files
        if (file.path.endsWith('_part.dart')) continue;
      }

      final fileName = file.uri.pathSegments.last; // e.g. calendar.dart

      // Skip generated library export files
      if (fileName == 'exports.g.dart') continue;

      // Skip excluded package files
      if (excludedPackageFiles[packageName]?.contains(fileName) ?? false) {
        continue;
      }

      final factoryOrStaticsFileRegExp =
          RegExp(r'\w+(factory\d{0,2}|statics\d{0,2})\.dart');
      // Skip factory and statics files
      if (factoryOrStaticsFileRegExp.hasMatch(fileName)) continue;

      // e.g. ..\windows_data\lib\src\json\jsonvalue.dart -> json/jsonvalue.dart
      final filePath =
          file.path.replaceFirst(packagePath, '').replaceAll(r'\', '/');
      exports.add(filePath);
    }

    final path = '${packagePath}exports.g.dart';
    final content = '''
$exportsFileHeader
${exports.map((e) => "export '$e';").join('\n')}
''';
    writeToFile(path, content);
  }
}

void main() {
  final stopwatch = Stopwatch()..start();

  print('[${stopwatch.elapsed}] Loading JSON files...');
  final (:enums, :objects, :structs) = loadJsonFiles();

  print('[${stopwatch.elapsed}] Generating WinRT objects...');
  generateObjects(objects);

  print('[${stopwatch.elapsed}] Generating concrete classes for WinRT generic '
      'interfaces...');
  generateConcreteClassesForGenericInterfaces(genericTypes);

  print('[${stopwatch.elapsed}] Generating WinRT enumerations...');
  generateEnumerations(enums);

  print('[${stopwatch.elapsed}] Generating WinRT structures...');
  generateStructs(structs);

  print('[${stopwatch.elapsed}] Generating library exports...');
  generateLibraryExports();

  stopwatch.stop();
  print('[${stopwatch.elapsed}] Completed');
}
