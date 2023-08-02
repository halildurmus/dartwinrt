// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';

import 'package:winrtgen/winrtgen.dart';

/// Creates a file at the given [path] and writes the [content] into it.
void writeToFile(String path, String content) => File(path)
  ..createSync(recursive: true)
  ..writeAsStringSync(content);

void generateObjects() {
  final types = ObjectManager().types;

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

void generateConcreteClassesForGenericInterfaces() {
  for (final genericType in genericTypes) {
    final type = genericType.fullyQualifiedType;
    final projection = GenericInterfacePartFileProjection(genericType);
    final path = relativePathForType(type).replaceFirst('.dart', '_part.dart');
    writeToFile(path, projection.toString());
  }
}

void generateEnumerations() {
  final types = EnumManager().types;
  for (final type in types.keys) {
    final projection = EnumProjection.from(type, comment: types[type] ?? '');
    final path = relativePathForType(type);
    writeToFile(path, projection.toString());
  }
}

void generateStructs() {
  final types = StructManager().types;
  final nativeStructProjections = SplayTreeSet<NativeStructProjection>(
      (a, b) => a.typeDef.shortName.compareTo(b.typeDef.shortName));

  for (final type in types.keys) {
    final nativeStructProjection = NativeStructProjection.from(type);
    nativeStructProjections.add(nativeStructProjection);
    final structProjection =
        StructProjection.from(type, comment: types[type] ?? '');
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

  print('[${stopwatch.elapsed}] Generating WinRT objects...');
  generateObjects();

  print('[${stopwatch.elapsed}] Generating concrete classes for WinRT generic '
      'interfaces...');
  generateConcreteClassesForGenericInterfaces();

  print('[${stopwatch.elapsed}] Generating WinRT enumerations...');
  generateEnumerations();

  print('[${stopwatch.elapsed}] Generating WinRT structures...');
  generateStructs();

  print('[${stopwatch.elapsed}] Generating library exports...');
  generateLibraryExports();

  stopwatch.stop();
  print('[${stopwatch.elapsed}] Completed');
}
