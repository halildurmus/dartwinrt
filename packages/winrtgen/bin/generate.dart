// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void generateClassesAndInterfaces(Map<String, String> types) {
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
    ..removeWhere((type) => excludedClassesAndInterfaces.contains(type));

  // Generate the type projection for each type
  for (final type in typesAndDependencies) {
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? InterfaceProjection(typeDef, comment: types[typeDef.name] ?? '')
        : ClassProjection(typeDef, comment: types[typeDef.name] ?? '');

    final dartClass = projection.toString();
    final fileName = stripGenerics(lastComponent(type)).toLowerCase();
    final classOutputPath =
        '${relativeFolderPathFromType(type)}/$fileName.dart';

    try {
      final formattedDartClass = DartFormatter().format(dartClass);
      File(classOutputPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(formattedDartClass);
    } catch (_) {
      // Better to write even on failure, so we can figure out what syntax error
      // it was that thwarted DartFormatter.
      print('Unable to format class. Writing unformatted...');
      File(classOutputPath)
        ..createSync(recursive: true)
        ..writeAsStringSync(dartClass);
    }
  }
}

void generateEnumerations(Map<String, String> enums) {
  final namespaceGroups = groupTypesByParentNamespace(enums.keys);

  for (final namespaceGroup in namespaceGroups) {
    final enumProjections = <EnumProjection>[];
    final firstType = namespaceGroup.types.first;
    final packageName = packageNameFromType(firstType);
    final fileOutputPath =
        '${relativeFolderPathFromType(firstType)}/enums.g.dart';
    final file = File(fileOutputPath)..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw Exception("Can't find $type");

      final EnumProjection enumProjection;
      if (typeDef.existsAttribute('System.FlagsAttribute')) {
        enumProjection =
            FlagsEnumProjection(typeDef, comment: enums[typeDef.name]!);
      } else {
        enumProjection = EnumProjection(typeDef, comment: enums[typeDef.name]!);
      }
      enumProjections.add(enumProjection);
    }

    enumProjections.sort((a, b) =>
        lastComponent(a.enumName).compareTo(lastComponent(b.enumName)));

    final String winrtEnumImport;
    if (packageName == 'windows_foundation') {
      final filePath = relativePath(
          'windows_foundation/lib/src/winrt_enum.dart',
          start: folderFromType(firstType));
      winrtEnumImport = "import '$filePath';";
    } else {
      winrtEnumImport =
          "import 'package:windows_foundation/windows_foundation.dart';";
    }

    final enumsFileContent =
        [enumsFileHeader, winrtEnumImport, ...enumProjections].join();
    file.writeAsStringSync(DartFormatter().format(enumsFileContent));
  }
}

void generateStructs(Map<String, String> structs) {
  final namespaceGroups = groupTypesByParentNamespace(structs.keys);

  for (final namespaceGroup in namespaceGroups) {
    final structProjections = <StructProjection>[];
    final fileOutputPath =
        '${relativeFolderPathFromType(namespaceGroup.types.first)}/structs.g.dart';
    final file = File(fileOutputPath)..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final structProjection =
          StructProjection.from(type, comment: structs[type]!);
      structProjections.add(structProjection);
    }

    structProjections.sort((a, b) =>
        lastComponent(a.structName).compareTo(lastComponent(b.structName)));

    final structsFileContent = [structsFileHeader, ...structProjections].join();
    file.writeAsStringSync(DartFormatter().format(structsFileContent));
  }
}

const packageNames = <String>{
  'windows_ai', 'windows_applicationmodel', 'windows_data', //
  'windows_devices', 'windows_foundation', 'windows_gaming', //
  'windows_globalization', 'windows_graphics', 'windows_management', //
  'windows_media', 'windows_networking', 'windows_perception', //
  'windows_security', 'windows_services', 'windows_storage', //
  'windows_system', 'windows_ui', 'windows_web', //
};

void generatePackageExports() {
  for (final packageName in packageNames) {
    final packagePath = '../$packageName/lib/src/';
    final exportsFile = File('${packagePath}exports.g.dart')
      ..createSync(recursive: true);
    final dir = Directory(packagePath);
    final files =
        dir.listSync(recursive: true, followLinks: false).whereType<File>();

    final exports = <String>{};

    for (final file in files) {
      // Skip internally used files from the windows_foundation package
      if (file.path.contains(r'internal\')) continue;

      final fileName = file.uri.pathSegments.last; // e.g. calendar.dart
      // Skip excluded files
      if (excludedPackageFiles.contains(fileName)) continue;

      // Skip factory and statics files
      final factoryOrStaticsFilePattern =
          RegExp(r'\w+(factory\d{0,2}|statics\d{0,2})\.dart');
      if (factoryOrStaticsFilePattern.hasMatch(fileName)) continue;

      // e.g. ..\windows_data\lib\src\json\jsonvalue.dart -> json/jsonvalue.dart
      final filePath =
          file.path.replaceFirst(packagePath, '').replaceAll(r'\', '/');
      exports.add(filePath);
    }

    final exportsFileContent = [
      exportsFileHeader,
      exports.map((e) => "export '$e';").join('\n')
    ].join();
    exportsFile.writeAsStringSync(DartFormatter().format(exportsFileContent));
  }
}

void main() {
  print('Generating WinRT classes and interfaces...');
  final typesToGenerate = loadMap('classes_and_interfaces.json');
  saveMap(typesToGenerate, 'classes_and_interfaces.json');
  generateClassesAndInterfaces(typesToGenerate);

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
