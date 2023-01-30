// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../utils.dart';

class NamespaceGroup {
  NamespaceGroup({required this.namespace, required this.types});

  /// The namespace of the group (e.g. `Windows.Gaming.Input`).
  final String namespace;

  /// The types in the group (e.g. `Windows.Gaming.Input.Gamepad`).
  final List<String> types;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NamespaceGroup &&
        other.namespace == namespace &&
        other.types.length == types.length &&
        other.types.every(types.contains);
  }

  @override
  int get hashCode => namespace.hashCode ^ types.hashCode;

  @override
  String toString() => 'NamespaceGroup(namespace: $namespace, types: $types)';
}

/// Groups types by their parent namespace.
List<NamespaceGroup> groupTypesByParentNamespace(Iterable<String> types) {
  types.toList().sort((a, b) => a.compareTo(b));
  final namespaceGroups = <NamespaceGroup>[];
  final namespaceGroup = NamespaceGroup(
      namespace: parentNamespace(types.first), types: [types.first]);
  namespaceGroups.add(namespaceGroup);

  for (var i = 1; i < types.length; i++) {
    final type = types.elementAt(i);
    if (namespaceGroups.any((e) => e.namespace == parentNamespace(type))) {
      final namespaceGroup = namespaceGroups
          .firstWhere((e) => e.namespace == parentNamespace(type));
      namespaceGroup.types.add(type);
    } else {
      final namespaceGroup =
          NamespaceGroup(namespace: parentNamespace(type), types: [type]);
      namespaceGroups.add(namespaceGroup);
    }
  }

  return namespaceGroups;
}
