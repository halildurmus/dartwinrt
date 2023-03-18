// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';

import 'package:args/args.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:pool/pool.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

/// Represents the type dependencies of a WinRT type like
/// `Windows.Storage.StorageFile`.
class TypeDependencies {
  TypeDependencies(
    this.type, {
    required this.enums,
    required this.objects,
    required this.structs,
    required this.ignoredTypes,
    this.alreadyGeneratedTypes = const {},
  });

  final String type;
  final Set<String> enums;
  final Set<String> objects;
  final Set<String> structs;
  final Set<String> ignoredTypes;
  final Set<String> alreadyGeneratedTypes;

  bool get hasNewDependencies =>
      enums.isNotEmpty || objects.isNotEmpty || structs.isNotEmpty;

  @override
  String toString() {
    final sb = StringBuffer()..writeln('Type dependencies of `$type`:');

    if (alreadyGeneratedTypes.isNotEmpty) {
      sb
        ..writeln()
        ..writeln('[Already generated]');
      for (final type in alreadyGeneratedTypes) {
        sb.writeln(' - $type');
      }
    }

    if (ignoredTypes.isNotEmpty) {
      sb
        ..writeln()
        ..writeln('[Ignored]');
      for (final type in ignoredTypes) {
        sb.writeln(' - $type');
      }
    }

    if (enums.isNotEmpty) {
      sb
        ..writeln()
        ..writeln('[Enums]');
      for (final type in enums) {
        sb.writeln(' - $type');
      }
    }

    if (objects.isNotEmpty) {
      sb
        ..writeln()
        ..writeln('[Objects]');
      for (final type in objects) {
        sb.writeln(' - $type');
      }
    }

    if (structs.isNotEmpty) {
      sb
        ..writeln()
        ..writeln('[Structs]');
      for (final type in structs) {
        sb.writeln(' - $type');
      }
    }

    return sb.toString();
  }
}

TypeDependencies getAllDependenciesOf(String type) {
  final visitedTypes = SplayTreeSet<String>();

  final enums = SplayTreeSet<String>();
  final objects = SplayTreeSet<String>();
  final structs = SplayTreeSet<String>();
  final ignoredTypes = SplayTreeSet<String>();

  final types = dependenciesOf(type);
  final typesToVisit = SplayTreeSet<String>.from(types.objects);

  while (typesToVisit.isNotEmpty) {
    final typeToVisit = typesToVisit.first;
    typesToVisit.remove(typeToVisit);
    if (visitedTypes.contains(typeToVisit)) continue;
    final dependencies = dependenciesOf(typeToVisit);
    visitedTypes.add(typeToVisit);
    enums.addAll(dependencies.enums);
    ignoredTypes.addAll(dependencies.ignoredTypes);
    objects.addAll(dependencies.objects);
    structs.addAll(dependencies.structs);
    typesToVisit.addAll(dependencies.objects);
  }

  final generatedFilePaths = getGeneratedFilePaths();
  final enumsToGenerate = loadMap('enums.json');
  final objectsToGenerate = loadMap('objects.json');
  final structsToGenerate = loadMap('structs.json');

  /// Returns `windows_globalization\lib\src\calendar.dart` for
  /// `Windows.Globalization.Calendar`.
  String filePath(String type) =>
      '${relativeFolderPathFromType(type)}/${fileNameFromType(type)}'
          .replaceFirst('../../packages/', '')
          .replaceAll(r'/', r'\');

  final alreadyGeneratedTypes = SplayTreeSet<String>()
    ..addAll({...enums, ...objects, ...structs}.where((type) =>
        generatedFilePaths.contains(filePath(type)) ||
        enumsToGenerate.keys.contains(type) ||
        objectsToGenerate.keys.contains(type) ||
        structsToGenerate.keys.contains(type)));

  enums.removeWhere((type) => enumsToGenerate.keys.contains(type));
  objects.removeWhere((type) =>
      generatedFilePaths.contains(filePath(type)) ||
      objectsToGenerate.keys.contains(type));
  structs.removeWhere((type) => structsToGenerate.keys.contains(type));

  return TypeDependencies(type,
      enums: enums,
      objects: objects,
      structs: structs,
      ignoredTypes: ignoredTypes,
      alreadyGeneratedTypes: alreadyGeneratedTypes);
}

TypeDependencies dependenciesOf(String type) {
  final enums = SplayTreeSet<String>();
  final objects = SplayTreeSet<String>()..add(type);
  final structs = SplayTreeSet<String>();
  final ignoredTypes = SplayTreeSet<String>();

  final typeDef = MetadataStore.getMetadataForType(type);
  if (typeDef == null) throw Exception("Can't find type $type");

  void handleTypeIdentifier(TypeIdentifier typeIdentifier) {
    final typeName = typeIdentifier.name;
    if (typeName.isEmpty) return;

    if (typeDef.interfaces.any((interface) => interface.name == typeName) ||
        ignoredTypesInImports.contains(typeName) ||
        typeName.endsWith('EventArgs')) {
      ignoredTypes.add(typeName);
      return;
    }

    // Add generic types (e.g. ..IReference`1) to ignoredTypes
    if (typeName.contains('`')) {
      ignoredTypes.add(typeName);
    } else {
      final typeProjection = TypeProjection(typeIdentifier);
      if (typeProjection.isWinRTObject) {
        objects.add(typeName);
      } else if (typeProjection.isWinRTEnum) {
        enums.add(typeName);
      } else if (typeProjection.isWinRTStruct) {
        structs.add(typeName);
      }
    }
  }

  final methods = {
    ...typeDef.methods,
    // Also add the methods from typeDef's inherited interfaces
    ...[for (var typeDef in typeDef.interfaces) ...typeDef.methods],
  };

  for (final method in methods) {
    final paramsAndReturnType = [...method.parameters, method.returnType];
    for (final param in paramsAndReturnType) {
      handleTypeIdentifier(param.typeIdentifier);

      // Keep unwrapping until there are no types left.
      var refType = param.typeIdentifier;
      while (refType.typeArg != null) {
        refType = refType.typeArg!;
        handleTypeIdentifier(refType);
      }
    }
  }

  return TypeDependencies(type,
      enums: enums,
      objects: objects,
      structs: structs,
      ignoredTypes: ignoredTypes);
}

Set<String> getGeneratedFilePaths() {
  final filePaths = <String>{};
  final packagesDir = Directory.current.parent;

  for (final entity in packagesDir.listSync(recursive: true)) {
    if (entity is File && entity.path.endsWith('.dart')) {
      // Skip native_structs.g.dart file
      if (entity.path.endsWith('native_structs.g.dart')) continue;

      // Skip generated exports.g.dart files
      if (entity.path.endsWith('exports.g.dart')) continue;

      // Skip part files
      if (entity.path.endsWith('_part.dart')) continue;

      // e.g. windows_globalization\lib\src\calendar.dart
      final path = entity.path.substring(entity.path.indexOf(r'packages\') + 9);
      filePaths.add(path);
    }
  }

  return filePaths;
}

/// Returns the documentation comments for the [types] as a [Map].
Future<Map<String, String>> getDocumentationComments(Set<String> types) async {
  final docs = SplayTreeMap<String, String>();
  final comments = await Future.wait(types.map(getDocumentationComment));
  for (var i = 0; i < comments.length; i++) {
    docs[types.elementAt(i)] = comments[i];
  }
  return docs;
}

final pool = Pool(3, timeout: const Duration(seconds: 30));

/// Attempts to fetch the documentation for the [fullyQualifiedType] (e.g.
/// `Windows.Globalization.Calendar`).
///
/// Returns an empty string if no documentation is found.
Future<String> getDocumentationComment(String fullyQualifiedType) async {
  return pool.withResource(() async {
    const authority = 'learn.microsoft.com';
    const basePath = '/en-us/uwp/api/';
    final uri = Uri.https(authority, '$basePath/$fullyQualifiedType');
    final response = await http.get(uri);
    final document = parse(response.body);
    final paragraphs = document.querySelectorAll('div.summary > p');
    if (paragraphs.isEmpty) {
      print('No documentation comment found for `$fullyQualifiedType`!');
      return '';
    }
    return paragraphs.first.text;
  });
}

Future<void> addEnum(String type) async {
  final enumsToGenerate = loadMap('enums.json');
  if (enumsToGenerate.keys.contains(type)) {
    print('`$type` already exists in `data\\enums.json`!');
    return;
  }

  print('Fetching documentation comment for `$type`...');
  final docComment = await getDocumentationComment(type);

  print('Adding `$type` into `data\\enums.json`...');
  enumsToGenerate[type] = docComment;
  saveMap(enumsToGenerate, 'enums.json');
  print('Done!');
}

Future<void> addObject(String type) async {
  final dependencies = getAllDependenciesOf(type);
  print(dependencies);

  if (!dependencies.hasNewDependencies) {
    print('No new dependencies found for `$type`!');
    return;
  }

  print('Fetching documentation comments for the dependencies of `$type`...');
  final docs = await getDocumentationComments({
    ...dependencies.enums,
    ...dependencies.objects,
    ...dependencies.structs
  });

  print('Adding the dependencies to JSON files...');
  if (dependencies.enums.isNotEmpty) {
    print(' - Updating `data\\enums.json`...');
    final enumsToGenerate = loadMap('enums.json');
    for (final enumName in dependencies.enums) {
      enumsToGenerate[enumName] = docs[enumName] ?? '';
    }
    saveMap(enumsToGenerate, 'enums.json');
  }

  if (dependencies.objects.isNotEmpty) {
    print(' - Updating `data\\objects.json`...');
    final objectsToGenerate = loadMap('objects.json');
    for (final objectName in dependencies.objects) {
      objectsToGenerate[objectName] = docs[objectName] ?? '';
    }
    saveMap(objectsToGenerate, 'objects.json');
  }

  if (dependencies.structs.isNotEmpty) {
    print(' - Updating `data\\structs.json`...');
    final structsToGenerate = loadMap('structs.json');
    for (final structName in dependencies.structs) {
      structsToGenerate[structName] = docs[structName] ?? '';
    }
    saveMap(structsToGenerate, 'structs.json');
  }
  print('Done!');
}

Future<void> addStruct(String type) async {
  final structsToGenerate = loadMap('structs.json');
  if (structsToGenerate.keys.contains(type)) {
    print('`$type` already exists in `data\\structs.json`!');
    return;
  }

  print('Fetching documentation comment for `$type`...');
  final docComment = await getDocumentationComment(type);
  print('Adding `$type` into `data\\structs.json`...');
  structsToGenerate[type] = docComment;
  saveMap(structsToGenerate, 'structs.json');
  print('Done!');
}

void main(List<String> args) async {
  final parser = ArgParser()
    ..addOption(
      'enum',
      abbr: 'e',
      help: 'WinRT enum type (e.g. Windows.Globalization.DayOfWeek).',
      valueHelp: 'type',
    )
    ..addOption(
      'object',
      abbr: 'o',
      help: 'WinRT object type (e.g. Windows.Storage.StorageFile).',
      valueHelp: 'type',
    )
    ..addOption(
      'struct',
      abbr: 's',
      help: 'WinRT struct type (e.g. Windows.Foundation.Point).',
      valueHelp: 'type',
    );

  try {
    final results = parser.parse(args);
    if (results.options.isEmpty) throw const FormatException();

    switch (results.options.first) {
      case 'enum':
        await addEnum(results['enum'] as String);
        break;
      case 'object':
        await addObject(results['object'] as String);
        break;
      case 'struct':
        await addStruct(results['struct'] as String);
        break;
      default:
        throw const FormatException();
    }
  } on FormatException {
    print('Adds new WinRT types to be generated by winrtgen.\n');
    print('Usage: add_type [arguments]\n');
    print(parser.usage);
  }
}
