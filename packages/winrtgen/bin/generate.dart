// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';

import 'package:winrtgen/winrtgen.dart';

void generateObjects() {
  final types = ObjectManager().types;

  // Catalog all the types we need to generate: the types themselves and their
  // dependencies
  final typesAndDependencies = <String>{};

  for (final type in types.keys) {
    final typeDef = type.typeDef;
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef)
        : ClassProjection(typeDef);

    typesAndDependencies.addAll({
      // The type itself, e.g., 'Windows.Globalization.Calendar'
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
    ..removeWhere((type) => Exclusion.excludedObjects.contains(type));

  // Generate the type projection for each type
  for (final type in typesAndDependencies) {
    final typeDef = type.typeDef;
    final comment = types[type] ?? '';
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef, comment: comment)
        : ClassProjection(typeDef, comment: comment);
    final path = type.toFilePath().relativePathFrom('winrtgen');
    writeToFile(path, projection.toString());
  }
}

void generateConcreteClassesForGenericInterfaces() {
  for (final genericType in GenericType.all) {
    final projection = GenericInterfacePartFileProjection(genericType);
    final path = genericType.type
        .toFilePath()
        .replaceFirst('.dart', '_part.dart')
        .relativePathFrom('winrtgen');
    writeToFile(path, projection.toString());
  }
}

void generateEnumerations() {
  final types = EnumManager().types;
  for (final type in types.keys) {
    final projection =
        EnumProjection.fromType(type, comment: types[type] ?? '');
    final path = type.toFilePath().relativePathFrom('winrtgen');
    writeToFile(path, projection.toString());
  }
}

void generateStructs() {
  final types = StructManager().types;
  final nativeStructProjections = SplayTreeSet<NativeStructProjection>(
      (a, b) => a.typeDef.shortName.compareTo(b.typeDef.shortName));

  for (final type in types.keys) {
    final nativeStructProjection = NativeStructProjection.fromType(type);
    nativeStructProjections.add(nativeStructProjection);
    final structProjection =
        StructProjection.fromType(type, comment: types[type] ?? '');
    final path = type.toFilePath().relativePathFrom('winrtgen');
    writeToFile(path, structProjection.toString());
  }

  final nativeStructsFilePath =
      'windows_foundation/lib/src/internal/native_structs.g.dart'
          .relativePathFrom('winrtgen');
  final nativeStructsFileContent =
      [Header.nativeStructs, ...nativeStructProjections].join();
  writeToFile(nativeStructsFilePath, nativeStructsFileContent);
}

void generateLibraryExports() {
  for (final package in Package.values) {
    final packageName = package.name;
    final packagePath = '$packageName/lib/src/'.relativePathFrom('winrtgen');
    final dir = Directory(packagePath);
    final files =
        dir.listSync(recursive: true, followLinks: false).whereType<File>();
    final exports = <String>{};

    for (final file in files) {
      final fileName = file.uri.pathSegments.last; // e.g., calendar.dart

      if (package == Package.foundation) {
        // Skip internally used files
        if (file.path.contains(r'internal\')) continue;

        // Skip generated part files
        if (fileName.isPartFile) continue;
      }

      // Skip excluded package files
      if (Exclusion.excludedPackageFiles[packageName]?.contains(fileName) ??
          false) {
        continue;
      }

      // Skip generated library export files
      if (fileName.isExportsFile) continue;

      // Skip factory and statics files
      if (fileName.isFactoryOrStaticsFile) continue;

      // e.g., ..\windows_data\lib\src\json\jsonvalue.dart -> json/jsonvalue.dart
      final filePath = file.path.substring(packagePath.length + 1).toUnixPath();
      exports.add(filePath);
    }

    final path = '$packagePath/exports.g.dart';
    final content = '''
${Header.exports}
${exports.map((export) => 'export ${export.quote()};').join('\n')}
''';
    writeToFile(path, content);
  }
}

/// Creates a file at the given [path] and writes the [content] into it.
void writeToFile(String path, String content) => File(path)
  ..createSync(recursive: true)
  ..writeAsStringSync(content);

void main() async {
  final stopwatch = Stopwatch()..start();

  print('[${stopwatch.elapsed}] Loading WinRT Metadata...');
  await WinRTMetadataStore.loadMetadata();

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
