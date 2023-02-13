// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _EnumProjection on MethodProjection {
  @override
  String get returnType => returnTypeProjection.typeIdentifier.type!.shortName;
}

/// Method projection for methods that return a WinRT enum (e.g. `AsyncStatus`).
class EnumMethodProjection extends MethodProjection with _EnumProjection {
  EnumMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return $returnType.from(retValuePtr.value);
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for WinRT enum getters.
class EnumGetterProjection extends GetterProjection with _EnumProjection {
  EnumGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
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

/// Setter projection for WinRT enum setters.
class EnumSetterProjection extends SetterProjection {
  EnumSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    ${ffiCall(params: 'value.value')}
  }
''';
}

/// Parameter projection for WinRT enum parameters.
class EnumParameterProjection extends ParameterProjection {
  EnumParameterProjection(super.parameter);

  @override
  String get type => typeProjection.typeIdentifier.type!.shortName;

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '$identifier.value';
}
