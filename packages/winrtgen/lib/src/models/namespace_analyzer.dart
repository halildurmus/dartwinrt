// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extensions/extensions.dart';
import 'winrt_metadata_store.dart';

/// A class for analyzing a WinRT namespace to retrieve information about its
/// classes, delegates, enums, interfaces, and structs.
final class NamespaceAnalyzer {
  NamespaceAnalyzer._(this.namespace);

  /// The WinRT namespace (e.g. `Windows.Foundation`) being analyzed.
  final String namespace;

  /// Creates a [NamespaceAnalyzer] instance for the provided [namespace].
  factory NamespaceAnalyzer.fromNamespace(String namespace) {
    if (!namespace.isWinRTNamespace) {
      throw ArgumentError.value(
          namespace, 'namespace', 'Not a WinRT namespace.');
    }

    return NamespaceAnalyzer._(namespace);
  }

  Set<String>? _classes;

  /// Returns a set of classes within the analyzed namespace.
  Set<String> get classes => _classes ??= _getClasses();

  Set<String> _getClasses() => WinRTMetadataStore.classesInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();

  /// Whether the provided type (e.g. `Windows.Foundation.Uri`) exists within
  /// the analyzed namespace.
  bool containsType(String type) {
    if (!type.isWinRTType) {
      throw ArgumentError.value(type, 'type', 'Not a WinRT type.');
    }

    return classes.any((e) => e == type) ||
        delegates.any((e) => e == type) ||
        enums.any((e) => e == type) ||
        interfaces.any((e) => e == type) ||
        structs.any((e) => e == type);
  }

  Set<String>? _delegates;

  /// Returns a set of delegates within the analyzed namespace.
  Set<String> get delegates => _delegates ??= _getDelegates();

  Set<String> _getDelegates() =>
      WinRTMetadataStore.delegatesInNamespace(namespace)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _enums;

  /// Returns a set of enums within the analyzed namespace.
  Set<String> get enums => _enums ??= _getEnums();

  Set<String> _getEnums() => WinRTMetadataStore.enumsInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();

  Set<String>? _interfaces;

  /// Returns a set of interfaces within the analyzed namespace.
  Set<String> get interfaces => _interfaces ??= _getInterfaces();

  Set<String> _getInterfaces() =>
      WinRTMetadataStore.interfacesInNamespace(namespace)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _interfacesExcludingFactoryAndStatics;

  /// Returns a set of interfaces within the analyzed namespace, excluding
  /// factory (e.g., `Windows.Globalization.Calendar.ICalendarFactory`) and
  /// statics (e.g., `Windows.System.Launcher.ILauncherStatics`) interfaces.
  Set<String> get interfacesExcludingFactoryAndStatics =>
      _interfacesExcludingFactoryAndStatics ??=
          _getInterfacesExcludingFactoryAndStatics();

  Set<String> _getInterfacesExcludingFactoryAndStatics() =>
      WinRTMetadataStore.interfacesInNamespace(namespace)
          .where((typeDef) =>
              !typeDef.isFactoryInterface && !typeDef.isStaticsInterface)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _structs;

  /// Returns a set of structs within the analyzed namespace.
  Set<String> get structs => _structs ??= _getStructs();

  Set<String> _getStructs() => WinRTMetadataStore.structsInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();
}
