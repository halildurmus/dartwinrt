// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/models.dart';
import '../../projections/type.dart';
import 'type_identifier_helpers.dart';

extension ParameterHelpers on Parameter {
  /// Returns a copy of this parameter.
  Parameter clone() =>
      Parameter.fromTypeIdentifier(scope, parent.token, typeIdentifier)
        ..attributes = attributes
        ..name = name;

  ArrayStyle get arrayStyle {
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

    if (arraySizeParam == null) return ArrayStyle.receive;
    if (arraySizeParam.isInParam) {
      if (arrayParam.isOutParam) return ArrayStyle.fill;
      return ArrayStyle.pass;
    }
    return ArrayStyle.receive;
  }

  bool get isClassVariableType => typeIdentifier.isClassVariableType;

  bool get isDelegate => typeIdentifier.type?.isDelegate ?? false;

  bool get isGenericType => typeIdentifier.isGenericType;

  bool get isPointerType => typeIdentifier.isPointerType;

  bool get isReferenceType => typeIdentifier.isReferenceType;

  /// Whether this is a simple array size parameter (e.g. `__valueSize`).
  bool get isSimpleArraySizeParam => RegExp(r'^(__\w+Size)$').hasMatch(name);

  bool get isSimpleArrayType => typeIdentifier.isSimpleArrayType;

  /// Returns the appropriate [ProjectionKind] for this parameter.
  ProjectionKind get projectionKind =>
      TypeProjection(typeIdentifier).projectionKind;

  /// Converts this simple array size parameter name (e.g. `__valueSize`) to the
  /// corresponding array parameter name (e.g. `value`).
  String toArrayParamName() {
    assert(isSimpleArraySizeParam);
    return name.substring(2, name.length - 4);
  }

  /// Converts this array parameter name (e.g. `value`) to the corresponding
  /// array size parameter name (e.g. `__valueSize`).
  String toArraySizeParamName() {
    assert(!name.startsWith('__') && !name.endsWith('Size'));
    return '__${name}Size';
  }
}
