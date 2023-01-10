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
            typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
            comment: enums[typeDef.name]!);
      } else {
        enumProjection = WinRTEnumProjection(
            typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
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

    final enumsFile =
        [winrtEnumFileHeader, winrtEnumFileImport, ...enumProjections].join();
    file.writeAsStringSync(DartFormatter().format(enumsFile));
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
          typeDef, stripAnsiUnicodeSuffix(lastComponent(typeDef.name)),
          comment: structs[typeDef.name]!);
      structProjections.add(structProjection);
    }

    structProjections.sort((a, b) =>
        lastComponent(a.structName).compareTo(lastComponent(b.structName)));

    final structsFile = [winrtStructFileHeader, ...structProjections].join();
    file.writeAsStringSync(DartFormatter().format(structsFile));
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
}
