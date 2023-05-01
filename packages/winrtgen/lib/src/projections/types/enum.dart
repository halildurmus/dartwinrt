// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../exception/exception.dart';
import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _EnumMixin on MethodProjection {
  @override
  String get returnType {
    final typeIdentifier = returnTypeProjection.typeIdentifier;
    if (typeIdentifier.type case final type?) return type.shortName;
    throw WinRTGenException('Type $typeIdentifier has no TypeDef.');
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return $returnType.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return WinRT enum (e.g. `AsyncStatus`).
final class EnumMethodProjection extends MethodProjection with _EnumMixin {
  EnumMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT enum getters.
final class EnumGetterProjection extends GetterProjection with _EnumMixin {
  EnumGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT enum setters.
final class EnumSetterProjection extends SetterProjection {
  EnumSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.value')}
  }
''';
}

/// Parameter projection for WinRT enum parameters.
final class EnumParameterProjection extends ParameterProjection {
  EnumParameterProjection(super.parameter);

  @override
  String get type {
    if (parameter.typeIdentifier.type case final type?) return type.shortName;
    throw WinRTGenException('Type ${parameter.typeIdentifier} has no TypeDef.');
  }

  @override
  String get localIdentifier => '$identifier.value';
}
