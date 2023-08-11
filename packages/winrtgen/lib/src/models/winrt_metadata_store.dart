// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';

/// A class that provides access to the WinRT Metadata.
final class WinRTMetadataStore {
  /// Returns all [TypeDef]s of runtime classes in the given [namespace].
  static List<TypeDef> classesInNamespace(String namespace) =>
      MetadataStore.getScopeForNamespace(namespace).classes.toList();

  /// Returns all [TypeDef]s of delegates in the given [namespace].
  static List<TypeDef> delegatesInNamespace(String namespace) =>
      MetadataStore.getScopeForNamespace(namespace).delegates.toList();

  /// Returns all [TypeDef]s of enums in the given [namespace].
  static List<TypeDef> enumsInNamespace(String namespace) =>
      MetadataStore.getScopeForNamespace(namespace).enums.toList();

  /// Find a matching [TypeDef], if one exists, for a WinRT [type] (e.g.,
  /// `Windows.Foundation.MemoryBuffer`).
  static TypeDef findTypeDef(String type) {
    if (!type.isWinRTType) {
      throw ArgumentError.value(type, 'type', 'Not a WinRT type.');
    }

    try {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw '';
      return typeDef;
    } catch (_) {
      throw StateError('`$type` is not found in the Metadata!');
    }
  }

  /// Returns all [TypeDef]s of interfaces in the given [namespace].
  static List<TypeDef> interfacesInNamespace(String namespace) =>
      MetadataStore.getScopeForNamespace(namespace).interfaces.toList();

  static List<Method>? _methods;

  /// Returns the all [Method]s in the Metadata.
  static List<Method> get methods => _methods ??= _getMethods();

  static List<Method> _getMethods() => [
        for (final namespace in WinRTNamespace.values) ...[
          ...MetadataStore.getWinRTScopeForNamespace(namespace)
              .classes
              .map((typeDef) => typeDef.methods)
              .expand((e) => e),
          ...MetadataStore.getWinRTScopeForNamespace(namespace)
              .interfaces
              .map((typeDef) => typeDef.methods)
              .expand((e) => e),
        ]
      ];

  /// Returns all [TypeDef]s of structs in the given [namespace].
  static List<TypeDef> structsInNamespace(String namespace) =>
      MetadataStore.getScopeForNamespace(namespace).structs.toList();

  /// Try to find a matching typedef, if one exists, for a WinRT [type] (e.g.,
  /// `Windows.Foundation.MemoryBuffer`).
  ///
  /// Returns `null` if the type is not found.
  static TypeDef? tryFindTypeDef(String type) {
    try {
      return findTypeDef(type);
    } catch (_) {
      return null;
    }
  }

  /// Returns all [TypeDef]s in a given WinRT [namespace].
  static List<TypeDef> typeDefsInNamespace(String namespace) {
    final scope = MetadataStore.getScopeForNamespace(namespace);
    return [
      ...scope.classes,
      ...scope.delegates,
      ...scope.enums,
      ...scope.interfaces,
      ...scope.structs
    ];
  }
}
