// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../extensions/extensions.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _EnumMixin on MethodProjection {
  @override
  String get returnType => returnTypeProjection.typeIdentifier.type!.shortName;

  @override
  String get methodDeclaration => '''
  $methodHeader {
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

/// Method projection for methods that return WinRT enum (e.g. `AsyncStatus`).
class EnumMethodProjection extends MethodProjection with _EnumMixin {
  EnumMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT enum getters.
class EnumGetterProjection extends GetterProjection with _EnumMixin {
  EnumGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT enum setters.
class EnumSetterProjection extends SetterProjection {
  EnumSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
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
