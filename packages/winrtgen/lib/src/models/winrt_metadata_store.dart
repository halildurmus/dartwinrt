// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

final class WinRTMetadataStore {
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

  /// Find a matching typedef, if one exists, for a Windows Runtime [type].
  static TypeDef findMetadata(String type) {
    try {
      final typeDef = MetadataStore.getMetadataForType(type);
      if (typeDef == null) throw '';
      return typeDef;
    } catch (_) {
      throw StateError('`$type` is not found in the Metadata!');
    }
  }
}
