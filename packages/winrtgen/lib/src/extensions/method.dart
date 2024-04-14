// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../models/models.dart';
import 'type_identifier.dart';

extension MethodHelpers on Method {
  /// Returns a copy of this method.
  Method clone() => Method.fromToken(scope, token);

  /// Whether this method returns `void`.
  bool get isVoid => returnType.typeIdentifier.isVoidType;

  /// Returns the appropriate [ProjectionKind] for this method.
  ProjectionKind get projectionKind => ProjectionKind.fromMethod(this);

  /// Returns a unique name for this method.
  ///
  /// Since Dart doesn't allow overloaded methods, it is imperative for each
  /// method to possess a unique name.
  ///
  /// If this method is overloaded, the name provided by the metadata is
  /// returned. Otherwise, the original name is returned.
  String get uniqueName {
    // Is this a WinRT method overloaded with a name provided by the metadata?
    final overloadName = attributeAsString(Attribute.overload.name);
    if (overloadName.isNotEmpty) return overloadName;
    // If not, the original name suffices.
    return name;
  }
}
