// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The type of an IXmlNode, as returned by the NodeType property.
///
/// {@category enum}
enum NodeType implements WinRTEnum {
  invalid(0),
  elementNode(1),
  attributeNode(2),
  textNode(3),
  dataSectionNode(4),
  entityReferenceNode(5),
  entityNode(6),
  processingInstructionNode(7),
  commentNode(8),
  documentNode(9),
  documentTypeNode(10),
  documentFragmentNode(11),
  notationNode(12);

  @override
  final int value;

  const NodeType(this.value);

  factory NodeType.from(int value) =>
      NodeType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
