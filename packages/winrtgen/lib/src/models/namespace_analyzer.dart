// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import 'winrt_metadata_store.dart';

class NamespaceAnalyzer {
  NamespaceAnalyzer._(this.namespace);

  final String namespace;

  factory NamespaceAnalyzer.fromNamespace(String namespace) {
    if (!namespace.isWinRTNamespace) {
      throw ArgumentError.value(
          namespace, 'namespace', 'Not a WinRT namespace.');
    }

    return NamespaceAnalyzer._(namespace);
  }

  Set<String>? _classes;

  Set<String> get classes => _classes ??= _getClasses();

  Set<String> _getClasses() => WinRTMetadataStore.classesInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();

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

  Set<String> get delegates => _delegates ??= _getDelegates();

  Set<String> _getDelegates() =>
      WinRTMetadataStore.delegatesInNamespace(namespace)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _enums;

  Set<String> get enums => _enums ??= _getEnums();

  Set<String> _getEnums() => WinRTMetadataStore.enumsInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();

  Set<String>? _interfaces;

  Set<String> get interfaces => _interfaces ??= _getInterfaces();

  Set<String> _getInterfaces() =>
      WinRTMetadataStore.interfacesInNamespace(namespace)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _interfacesExcludingFactoryAndStatics;

  Set<String> get interfacesExcludingFactoryAndStatics =>
      _interfacesExcludingFactoryAndStatics ??=
          _getInterfacesExcludingFactoryAndStatics();

  Set<String> _getInterfacesExcludingFactoryAndStatics() =>
      MetadataStore.getScopeForNamespace(namespace)
          .interfaces
          .where((typeDef) =>
              !typeDef.isFactoryInterface && !typeDef.isStaticsInterface)
          .map((typeDef) => typeDef.name)
          .toSet();

  Set<String>? _structs;

  Set<String> get structs => _structs ??= _getStructs();

  Set<String> _getStructs() => WinRTMetadataStore.structsInNamespace(namespace)
      .map((typeDef) => typeDef.name)
      .toSet();
}
