// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/models.dart';
import 'string.dart';
import 'type_identifier.dart';

extension ParameterHelpers on Parameter {
  /// Returns a copy of this parameter.
  Parameter clone() =>
      Parameter.fromTypeIdentifier(scope, parent.token, typeIdentifier)
        ..attributes = attributes
        ..name = name;

  /// Returns the array passing style for simple array parameters.
  ArrayPassingStyle get arrayPassingStyle {
    assert(isReferenceType || isSimpleArraySizeParam || isSimpleArrayType);

    var arrayParam = this;
    Parameter? arraySizeParam;

    if (isSimpleArraySizeParam) {
      arraySizeParam = this;
      final arrayParamName = toArrayParamName();
      arrayParam =
          parent.parameters.firstWhere((p) => p.name == arrayParamName);
    } else {
      final arraySizeParamName = toArraySizeParamName();
      arraySizeParam = parent.parameters
          .where((p) => p.name == arraySizeParamName)
          .firstOrNull;
    }

    if (arraySizeParam == null || arrayParam.isReferenceType) {
      return ArrayPassingStyle.receive;
    }

    if (arraySizeParam.isInParam && arrayParam.isOutParam) {
      return ArrayPassingStyle.fill;
    }

    if (arraySizeParam.isInParam && arrayParam.isInParam) {
      return ArrayPassingStyle.pass;
    }

    throw StateError(
        'Failed to determine array-passing style for parameter $name.');
  }

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isPointerType => typeIdentifier.isPointerType;

  bool get isReferenceType => typeIdentifier.isReferenceType;

  /// Whether this is a simple array size parameter (e.g., `__valueSize`).
  bool get isSimpleArraySizeParam => name.isSimpleArraySizeParam;

  bool get isSimpleArrayType => typeIdentifier.isSimpleArrayType;

  /// Returns the appropriate [ProjectionKind] for this parameter.
  ProjectionKind get projectionKind =>
      ProjectionKind.fromTypeIdentifier(typeIdentifier);

  /// Converts this simple array size parameter name (e.g., `__valueSize`) to
  /// the corresponding array parameter name (e.g., `value`).
  String toArrayParamName() {
    assert(isSimpleArraySizeParam);
    return name.substring(2, name.length - 4);
  }

  /// Converts this array parameter name (e.g., `value`) to the corresponding
  /// array size parameter name (e.g., `__valueSize`).
  String toArraySizeParamName() {
    assert(!isSimpleArraySizeParam);
    return '__${name}Size';
  }
}
