// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

/// Method projection for methods that return a `Guid`.
class GuidMethodProjection extends MethodProjection {
  GuidMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Guid $camelCasedName($methodParams) {
    final retValuePtr = calloc<GUID>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.toDartGuid();
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for `Guid` getters.
class GuidGetterProjection extends GetterProjection {
  GuidGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Guid get $camelCasedName {
    final retValuePtr = calloc<GUID>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Setter projection for `Guid` setters.
class GuidSetterProjection extends SetterProjection {
  GuidSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(Guid value) {
    final nativeGuidPtr = value.toNativeGUID();

    try {
      ${ffiCall(params: 'nativeGuidPtr.ref')}
    } finally {
      free(nativeGuidPtr);
    }
  }
''';
}

/// Parameter projection for `Guid` parameters.
class GuidParameterProjection extends ParameterProjection {
  GuidParameterProjection(super.parameter);

  @override
  String get preamble => 'final ${name}NativeGuidPtr = $name.toNativeGUID();';

  @override
  String get postamble => 'free(${name}NativeGuidPtr);';

  @override
  String get localIdentifier => '${name}NativeGuidPtr.ref';
}
