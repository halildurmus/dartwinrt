// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:args/args.dart';
import 'package:winrtgen/winrtgen.dart';

Future<void> addEnum(String type) async {
  final typeAnalyzer = TypeAnalyzer.fromType(type);
  if (!typeAnalyzer.isEnum) {
    throw ArgumentError.value(type, 'type', 'Not an enum.');
  }

  final enumManager = EnumManager();
  final assetPath = enumManager.path;

  if (enumManager.contains(type)) {
    throw StateError('`$type` already exists in `$assetPath`.');
  }

  print('Fetching documentation for `$type`...');
  final documentation = await WinRTDocsService.fetchDocumentation(type);
  print('Adding `$type` into `$assetPath`...');
  enumManager.add(type, comment: documentation);
  print('Done!');
}

Future<void> addObject(String type) async {
  final typeAnalyzer = TypeAnalyzer.fromType(type);
  if (!typeAnalyzer.isObject) {
    throw ArgumentError.value(type, 'type', 'Not an object.');
  }

  final objectManager = ObjectManager();
  final assetPath = objectManager.path;

  if (objectManager.contains(type)) {
    throw StateError('`$type` already exists in `$assetPath`.');
  }

  final dependencies = typeAnalyzer.dependencies;
  print(dependencies);

  if (!dependencies.hasNewDependencies) {
    print('No new dependencies found for `$type`.');
    return;
  }

  print('Fetching documentations for the dependencies of `$type`...');
  final docs = await WinRTDocsService.fetchDocumentations({
    ...dependencies.enums,
    ...dependencies.objects,
    ...dependencies.structs
  });

  print('Adding the dependencies into JSON files...');

  if (dependencies.enums.isNotEmpty) {
    final enumManager = EnumManager();
    final assetPath = enumManager.path;
    print(' - Updating `$assetPath`...');
    enumManager.addAll({
      for (final enumType in dependencies.enums) enumType: docs[enumType] ?? ''
    });
  }

  if (dependencies.objects.isNotEmpty) {
    print(' - Updating `$assetPath`...');
    objectManager.addAll({
      for (final object in dependencies.objects) object: docs[object] ?? ''
    });
  }

  if (dependencies.structs.isNotEmpty) {
    final structManager = StructManager();
    final assetPath = structManager.path;
    print(' - Updating `$assetPath`...');
    structManager.addAll({
      for (final struct in dependencies.structs) struct: docs[struct] ?? ''
    });
  }

  print('Done!');
}

Future<void> addStruct(String type) async {
  final typeAnalyzer = TypeAnalyzer.fromType(type);
  if (!typeAnalyzer.isStruct) {
    throw ArgumentError.value(type, 'type', 'Not a struct.');
  }

  final structManager = StructManager();
  final assetPath = structManager.path;

  if (structManager.contains(type)) {
    throw StateError('`$type` already exists in `$assetPath`.');
  }

  print('Fetching documentation for `$type`...');
  final documentation = await WinRTDocsService.fetchDocumentation(type);
  print('Adding `$type` into `$assetPath`...');
  structManager.add(type, comment: documentation);
  print('Done!');
}

ArgParser buildParser() => ArgParser()
  ..addFlag(
    'help',
    abbr: 'h',
    negatable: false,
    help: 'Print this usage information.',
  )
  ..addOption(
    'enum',
    abbr: 'e',
    help: 'WinRT enum type (e.g., Windows.Globalization.DayOfWeek).',
    valueHelp: 'type',
  )
  ..addOption(
    'object',
    abbr: 'o',
    help: 'WinRT object type (e.g., Windows.Storage.StorageFile).',
    valueHelp: 'type',
  )
  ..addOption(
    'struct',
    abbr: 's',
    help: 'WinRT struct type (e.g., Windows.Foundation.Point).',
    valueHelp: 'type',
  );

void printUsage(ArgParser argParser) {
  print('Usage: add_api <flags> [arguments]');
  print(argParser.usage);
}

void main(List<String> args) async {
  print('Loading WinRT Metadata...');
  await WinRTMetadataStore.loadMetadata();

  final argParser = buildParser();
  try {
    final results = argParser.parse(args);

    if (results.wasParsed('enum')) {
      await addEnum(results.get('enum'));
      return;
    }

    if (results.wasParsed('object')) {
      await addObject(results.get('object'));
      return;
    }

    if (results.wasParsed('struct')) {
      await addStruct(results.get('struct'));
      return;
    }

    if (results.wasParsed('help')) {
      printUsage(argParser);
      return;
    }

    throw const FormatException('No valid arguments provided.');
  } on FormatException catch (e) {
    print(e.message);
    print('');
    printUsage(argParser);
  } finally {
    WinRTMetadataStore.close();
  }
}

extension on ArgResults {
  String get(String name) => this[name] as String;
}
