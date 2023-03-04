// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

/// Creates a file at the given [path] and writes the formatted [content] to it.
///
/// If the [content] cannot be formatted, it will be written as unformatted.
void writeToFile(String path, String content) {
  try {
    File(path)
      ..createSync(recursive: true)
      ..writeAsStringSync(DartFormatter().format(content));
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
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
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
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef, comment: types[type] ?? '')
        : ClassProjection(typeDef, comment: types[type] ?? '');

    final fileName = stripGenerics(lastComponent(type)).toLowerCase();
    final path = '${relativeFolderPathFromType(type)}/$fileName.dart';
    final content = projection.toString();
    writeToFile(path, content);
  }
}

void generateConcreteClassesForGenericInterfaces(
    List<GenericType> genericTypes) {
  for (final genericType in genericTypes) {
    final type = genericType.fullyQualifiedType;
    final projections = <GenericInterfaceProjection>[
      if (genericType is GenericTypeWithOneTypeArg)
        for (final typeArg in genericType.typeArgs)
          GenericInterfaceProjection.from(type, typeArg)
      else if (genericType is GenericTypeWithTwoTypeArgs)
        for (final args in genericType.typeArgs)
          GenericInterfaceProjection.from(type, args.typeArg1, args.typeArg2)
    ];

    final fileName = stripGenerics(lastComponent(type).toLowerCase());
    final path = '${relativeFolderPathFromType(type)}/${fileName}_part.dart';
    final content = [
      classFileHeader,
      "part of '$fileName.dart';",
      projections.join('\n')
    ].join('\n');
    writeToFile(path, content);
  }
}

void generateEnumerations(Map<String, String> enums) {
  for (final type in enums.keys) {
    final projection = EnumProjection.from(type, comment: enums[type] ?? '');
    final fileName = stripGenerics(lastComponent(type)).toLowerCase();
    final path = '${relativeFolderPathFromType(type)}/$fileName.dart';
    final content = projection.toString();
    writeToFile(path, content);
  }
}

void generateStructs(Map<String, String> structs) {
  final nativeStructProjections = <NativeStructProjection>[];

  for (final type in structs.keys) {
    final nativeStructProjection = NativeStructProjection.from(type);
    nativeStructProjections.add(nativeStructProjection);

    final structProjection =
        StructProjection.from(type, comment: structs[type] ?? '');
    final fileName = stripGenerics(lastComponent(type)).toLowerCase();
    final path = '${relativeFolderPathFromType(type)}/$fileName.dart';
    final content = structProjection.toString();
    writeToFile(path, content);
  }

  final path =
      '../../packages/windows_foundation/lib/src/internal/native_structs.g.dart';
  final content = [nativeStructsFileHeader, ...nativeStructProjections].join();
  writeToFile(path, content);
}

void generatePackageExports() {
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

      // Skip generated package export files
      if (fileName == 'exports.g.dart') continue;

      // Skip excluded package files
      if (excludedPackageFiles[packageName]?.contains(fileName) ?? false) {
        continue;
      }

      // Skip factory and statics files
      final factoryOrStaticsFilePattern =
          RegExp(r'\w+(factory\d{0,2}|statics\d{0,2})\.dart');
      if (factoryOrStaticsFilePattern.hasMatch(fileName)) continue;

      // e.g. ..\windows_data\lib\src\json\jsonvalue.dart -> json/jsonvalue.dart
      final filePath =
          file.path.replaceFirst(packagePath, '').replaceAll(r'\', '/');
      exports.add(filePath);
    }

    final path = '${packagePath}exports.g.dart';
    final content = [
      exportsFileHeader,
      exports.map((e) => "export '$e';").join('\n')
    ].join();
    writeToFile(path, content);
  }
}

void main() {
  print('Generating WinRT objects...');
  final objectsToGenerate = loadMap('objects.json');
  saveMap(objectsToGenerate, 'objects.json');
  generateObjects(objectsToGenerate);

  print('Generating concrete classes for WinRT generic interfaces...');
  generateConcreteClassesForGenericInterfaces(genericTypesWithTypeArgs);

  print('Generating WinRT enumerations...');
  final enumsToGenerate = loadMap('enums.json');
  saveMap(enumsToGenerate, 'enums.json');
  generateEnumerations(enumsToGenerate);

  print('Generating WinRT structs...');
  final structsToGenerate = loadMap('structs.json');
  saveMap(structsToGenerate, 'structs.json');
  generateStructs(structsToGenerate);

  print('Generating package exports...');
  generatePackageExports();
}
