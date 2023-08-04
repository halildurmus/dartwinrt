// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'models.dart';

class TypeAnalyzer {
  TypeAnalyzer._(this.typeDef) : type = typeDef.name;

  final String type;
  final TypeDef typeDef;

  factory TypeAnalyzer.fromType(String type) =>
      TypeAnalyzer._(WinRTMetadataStore.findMetadata(type));

  factory TypeAnalyzer.fromTypeDef(TypeDef typeDef) => TypeAnalyzer._(typeDef);

  Set<String> get interfaces => isObject
      ? typeDef.interfaces.map((interface) => interface.name).toSet()
      : {};

  bool get isClass => typeDef.isClass;

  bool get isDelegate => typeDef.isDelegate;

  bool get isEnum => typeDef.isEnum;

  bool get isInterface => typeDef.isInterface;

  bool get isObject => isClass || isInterface;

  bool get isStruct => typeDef.isStruct;

  TypeDependencies? _dependencies;

  TypeDependencies get dependencies {
    if (isObject) return _dependencies ??= _getDependencies();
    return TypeDependencies(type,
        enums: {}, objects: {}, structs: {}, ignoredTypes: {});
  }

  TypeDependencies _getDependencies() {
    final visitedTypes = SplayTreeSet<String>();

    final enums = SplayTreeSet<String>();
    final objects = SplayTreeSet<String>();
    final structs = SplayTreeSet<String>();
    final ignoredTypes = SplayTreeSet<String>();

    final types = _dependenciesOf(type);
    final typesToVisit = SplayTreeSet<String>.from(types.objects);

    while (typesToVisit.isNotEmpty) {
      final typeToVisit = typesToVisit.first;
      typesToVisit.remove(typeToVisit);
      if (visitedTypes.contains(typeToVisit)) continue;

      final dependencies = _dependenciesOf(typeToVisit);
      visitedTypes.add(typeToVisit);
      enums.addAll(dependencies.enums);
      ignoredTypes.addAll(dependencies.ignoredTypes);
      objects.addAll(dependencies.objects);
      structs.addAll(dependencies.structs);
      typesToVisit.addAll(dependencies.objects);
    }

    final enumManager = EnumManager();
    final objectManager = ObjectManager();
    final structManager = StructManager();

    final allInterfaces = objectManager.types.keys
        .map((interface) => TypeAnalyzer.fromType(interface).interfaces)
        .expand((element) => element)
        .toSet();

    final alreadyGeneratedTypes = SplayTreeSet<String>.from(
        {...enums, ...objects, ...structs}.intersection({
      enumManager.types,
      allInterfaces,
      objectManager.types,
      structManager.types,
    }));

    enums.removeWhere(enumManager.contains);
    objects.removeWhere(
        (type) => objectManager.contains(type) || allInterfaces.contains(type));
    structs.removeWhere(structManager.contains);

    return TypeDependencies(type,
        enums: enums,
        objects: objects,
        structs: structs,
        ignoredTypes: ignoredTypes,
        alreadyGeneratedTypes: alreadyGeneratedTypes);
  }

  TypeDependencies _dependenciesOf(String type) {
    final enums = SplayTreeSet<String>();
    final objects = SplayTreeSet<String>()..add(type);
    final structs = SplayTreeSet<String>();
    final ignoredTypes = SplayTreeSet<String>();

    final typeDef = WinRTMetadataStore.findMetadata(type);

    void handleTypeIdentifier(TypeIdentifier typeIdentifier) {
      final typeName = typeIdentifier.name;
      if (typeName.isEmpty) return;

      if (ignoredTypesInImports.contains(typeName) ||
          typeDef.interfaces.any((interface) => interface.name == typeName) ||
          typeName.endsWith('EventArgs')) {
        ignoredTypes.add(typeName);
        return;
      }

      // Add generic types (e.g., ..IReference`1) to ignoredTypes
      if (typeName.contains('`')) {
        ignoredTypes.add(typeName);
      } else {
        if (typeIdentifier.isWinRTEnum) {
          enums.add(typeName);
        } else if (typeIdentifier.isWinRTObject) {
          objects.add(typeName);
        } else if (typeIdentifier.isWinRTStruct) {
          structs.add(typeName);
        }
      }
    }

    final methods = {
      ...typeDef.methods,
      // Also add the methods from typeDef's inherited interfaces
      ...[for (final typeDef in typeDef.interfaces) ...typeDef.methods],
    };

    for (final method in methods) {
      final paramsAndReturnType = [...method.parameters, method.returnType];
      for (final param in paramsAndReturnType) {
        handleTypeIdentifier(param.typeIdentifier);

        // Keep unwrapping until there are no types left.
        var refType = param.typeIdentifier.typeArg;
        while (refType != null) {
          handleTypeIdentifier(refType);
          refType = refType.typeArg;
        }
      }
    }

    return TypeDependencies(type,
        enums: enums,
        objects: objects,
        structs: structs,
        ignoredTypes: ignoredTypes);
  }
}

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
    final buffer = StringBuffer()..writeln('Type dependencies of `$type`:');

    if (alreadyGeneratedTypes.isNotEmpty) {
      buffer
        ..writeln()
        ..writeln('[Already generated]');
      for (final type in alreadyGeneratedTypes) {
        buffer.writeln(' - $type');
      }
    }

    if (ignoredTypes.isNotEmpty) {
      buffer
        ..writeln()
        ..writeln('[Ignored]');
      for (final type in ignoredTypes) {
        buffer.writeln(' - $type');
      }
    }

    if (enums.isNotEmpty) {
      buffer
        ..writeln()
        ..writeln('[Enums]');
      for (final type in enums) {
        buffer.writeln(' - $type');
      }
    }

    if (objects.isNotEmpty) {
      buffer
        ..writeln()
        ..writeln('[Objects]');
      for (final type in objects) {
        buffer.writeln(' - $type');
      }
    }

    if (structs.isNotEmpty) {
      buffer
        ..writeln()
        ..writeln('[Structs]');
      for (final type in structs) {
        buffer.writeln(' - $type');
      }
    }

    return buffer.toString();
  }
}
