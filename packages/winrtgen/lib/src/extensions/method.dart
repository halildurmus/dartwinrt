// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../models/models.dart';
import '../projections/projections.dart';
import 'type_identifier.dart';

extension MethodHelpers on Method {
  /// Returns a copy of this method.
  Method clone() => Method.fromToken(scope, token);

  /// Whether this method returns `void`.
  bool get isVoid => returnType.typeIdentifier.isVoidType;

  /// Returns the appropriate [ProjectionKind] for this method.
  ProjectionKind get projectionKind => parameters.any((p) => p.isOutParam)
      ? ProjectionKind.record
      : TypeProjection(returnType.typeIdentifier).projectionKind;

  /// Returns a unique name for this method.
  ///
  /// Since Dart doesn't allow overloaded methods, we have to rename methods
  /// that are duplicated.
  String get uniqueName {
    // Is it a WinRT method overloaded with a name provided by the metadata?
    final overloadName = attributeAsString(overloadAttribute);
    if (overloadName.isNotEmpty) return overloadName;
    // Otherwise the original name is fine.
    return name;
  }
}
