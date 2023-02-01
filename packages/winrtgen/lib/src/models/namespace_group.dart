// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../utils.dart';

class NamespaceGroup {
  NamespaceGroup(this.namespace, this.types);

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
  String toString() => 'NamespaceGroup($namespace, $types)';
}

/// Groups [types] by their parent namespace.
List<NamespaceGroup> groupTypesByParentNamespace(Iterable<String> types) {
  types.toList().sort((a, b) => a.compareTo(b));

  final groups = <NamespaceGroup>[
    NamespaceGroup(parentNamespace(types.first), [types.first])
  ];

  for (final type in types.skip(1)) {
    final namespace = parentNamespace(type);
    if (groups.any((group) => group.namespace == namespace)) {
      // Add the type to an existing group's types.
      final group = groups.firstWhere((g) => g.namespace == namespace);
      group.types.add(type);
    } else {
      // Create a new group for the type.
      final group = NamespaceGroup(namespace, [type]);
      groups.add(group);
    }
  }

  return groups;
}
