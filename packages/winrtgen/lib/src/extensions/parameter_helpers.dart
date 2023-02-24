// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

extension ParameterHelpers on Parameter {
  /// Returns a copy of this parameter.
  Parameter clone() =>
      Parameter.fromTypeIdentifier(scope, parent.token, typeIdentifier)
        ..name = name;

  bool get isClassVariableType =>
      typeIdentifier.baseType == BaseType.classVariableTypeModifier;

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isGenericType =>
      typeIdentifier.baseType == BaseType.genericTypeModifier;

  bool get isSimpleArrayType =>
      typeIdentifier.baseType == BaseType.simpleArrayType;
}
