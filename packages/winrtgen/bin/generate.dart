// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void generateWinRTTypes(Map<String, String> types) {
  // Catalog all the types we need to generate: the types themselves and their
  // dependencies
  final typesAndDependencies = <String>{};
  for (final type in types.keys) {
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? WinRTInterfaceProjection(typeDef)
        : WinRTClassProjection(typeDef);

    typesAndDependencies.addAll({
      // The type itself, e.g. 'Windows.Globalization.Calendar'
      type,

      // Interfaces that the type implements e.g.'Windows.Globalization.ICalendar'
      ...projection.typeDef.interfaces.map((interface) => interface.name),

      // The type's factory and static interfaces e.g.
      // 'Windows.Globalization.ICalendarFactory'
      if (projection is WinRTClassProjection) ...projection.factoryInterfaces,
      if (projection is WinRTClassProjection) ...projection.staticInterfaces
    });
  }

  typesAndDependencies
    // Remove generic interfaces as they are projected manually
    ..removeWhere((type) => type.isEmpty)
    // Remove excluded WinRT types
    ..removeWhere((type) => excludedWindowsRuntimeTypes.contains(type));

  // Generate the type projection for each type
  for (final type in typesAndDependencies) {
    final typeDef = MetadataStore.getMetadataForType(type);
    if (typeDef == null) throw Exception("Can't find $type");
    final projection = typeDef.isInterface
        ? WinRTInterfaceProjection(typeDef, types[typeDef.name] ?? '')
        : WinRTClassProjection(typeDef, types[typeDef.name] ?? '');

    final dartClass = projection.toString();
    final fileName = stripGenerics(lastComponent(type)).toLowerCase();
    final classOutputPath =
        '${relativeFolderPathFromWinRTType(type)}/$fileName.dart';

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

void generateWinRTEnumerations(Map<String, String> enums) {
  final namespaceGroups = groupTypesByParentNamespace(enums.keys);

  for (final namespaceGroup in namespaceGroups) {
    final enumProjections = <WinRTEnumProjection>[];
    final firstType = namespaceGroup.types.first;
    final packageName = packageNameFromWinRTType(firstType);
    final fileOutputPath =
        '${relativeFolderPathFromWinRTType(firstType)}/enums.g.dart';
    final file = File(fileOutputPath)..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw Exception("Can't find $type");

      final WinRTEnumProjection enumProjection;
      if (typeDef.existsAttribute('System.FlagsAttribute')) {
        enumProjection = WinRTFlagsEnumProjection(
            typeDef, lastComponent(typeDef.name),
            comment: enums[typeDef.name]!);
      } else {
        enumProjection = WinRTEnumProjection(
            typeDef, lastComponent(typeDef.name),
            comment: enums[typeDef.name]!);
      }
      enumProjections.add(enumProjection);
    }

    enumProjections.sort((a, b) =>
        lastComponent(a.enumName).compareTo(lastComponent(b.enumName)));

    final String winrtEnumFileImport;
    if (packageName == 'windows_foundation') {
      final filePath = relativePath(
          'packages/windows_foundation/winrt_enum.dart',
          start: 'packages/${folderFromWinRTType(firstType)}');
      winrtEnumFileImport = "import '$filePath';";
    } else {
      winrtEnumFileImport =
          "import 'package:windows_foundation/windows_foundation.dart';";
    }

    final enumsFileContent =
        [winrtEnumFileHeader, winrtEnumFileImport, ...enumProjections].join();
    file.writeAsStringSync(DartFormatter().format(enumsFileContent));
  }
}

void generateWinRTStructs(Map<String, String> structs) {
  final namespaceGroups = groupTypesByParentNamespace(structs.keys);

  for (final namespaceGroup in namespaceGroups) {
    final structProjections = <StructProjection>[];
    final fileOutputPath =
        '${relativeFolderPathFromWinRTType(namespaceGroup.types.first)}/structs.g.dart';
    final file = File(fileOutputPath)..createSync(recursive: true);

    for (final type in namespaceGroup.types) {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw Exception("Can't find $type");

      final structProjection = StructProjection(
          typeDef, lastComponent(typeDef.name),
          category: 'struct', comment: structs[typeDef.name]!);
      structProjections.add(structProjection);
    }

    structProjections.sort((a, b) =>
        lastComponent(a.structName).compareTo(lastComponent(b.structName)));

    final structsFileContent =
        [winrtStructFileHeader, ...structProjections].join();
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
  print('Generating Windows Runtime classes and interfaces...');
  final winrtTypesToGenerate = loadMap('winrt_types.json');
  saveMap(winrtTypesToGenerate, 'winrt_types.json');
  generateWinRTTypes(winrtTypesToGenerate);

  print('Generating Windows Runtime enumerations...');
  final winrtEnumsToGenerate = loadMap('winrt_enums.json');
  saveMap(winrtEnumsToGenerate, 'winrt_enums.json');
  generateWinRTEnumerations(winrtEnumsToGenerate);

  print('Generating Windows Runtime structs...');
  final winrtStructsToGenerate = loadMap('winrt_structs.json');
  saveMap(winrtStructsToGenerate, 'winrt_structs.json');
  generateWinRTStructs(winrtStructsToGenerate);

  print('Generating package exports...');
  generatePackageExports();
}
