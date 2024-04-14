// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'models.dart';

/// A class for analyzing WinRT types to retrieve information about their
/// attributes and dependent types.
final class TypeAnalyzer {
  TypeAnalyzer._(this.typeDef) : type = typeDef.name;

  /// The analyzed WinRT type (e.g., `Windows.Globalization.Calendar`).
  final String type;

  /// The underlying [TypeDef] for the analyzed type.
  final TypeDef typeDef;

  /// Creates a [TypeAnalyzer] instance for the provided [type] (e.g.,
  /// `Windows.Globalization.Calendar`).
  factory TypeAnalyzer.fromType(String type) => TypeAnalyzer._(type.typeDef);

  /// Creates a [TypeAnalyzer] instance for the provided [typeDef].
  factory TypeAnalyzer.fromTypeDef(TypeDef typeDef) => TypeAnalyzer._(typeDef);

  /// Returns a set of interfaces implemented by the analyzed type.
  Set<String> get interfaces => isObject
      ? typeDef.interfaces.map((interface) => interface.name).toSet()
      : {};

  bool get isClass => typeDef.isClass;

  bool get isDelegate => typeDef.isDelegate;

  bool get isEnum => typeDef.isEnum;

  bool get isFactoryInterface => typeDef.isFactoryInterface;

  bool get isInterface => typeDef.isInterface;

  bool get isObject => isClass || isInterface;

  bool get isStaticsInterface => typeDef.isStaticsInterface;

  bool get isStruct => typeDef.isStruct;

  TypeDependencies? _dependencies;

  /// Returns the type dependencies of the analyzed type.
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

    final typeDef = type.typeDef;

    void handleTypeIdentifier(TypeIdentifier typeIdentifier) {
      final typeName = typeIdentifier.name;
      if (typeName.isEmpty) return;

      if (Exclusion.excludedImports.contains(typeName) ||
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
