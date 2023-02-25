// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _GuidMixin on MethodProjection {
  @override
  String get returnType => 'Guid';
}

/// Method projection for methods that return a `Guid`.
class GuidMethodProjection extends MethodProjection with _GuidMixin {
  GuidMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
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
class GuidGetterProjection extends GetterProjection with _GuidMixin {
  GuidGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
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
  set $camelCasedName(${param.type} value) {
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
  String get type => 'Guid';

  @override
  String get preamble => 'final ${name}NativeGuidPtr = $name.toNativeGUID();';

  @override
  String get postamble => 'free(${name}NativeGuidPtr);';

  @override
  String get localIdentifier => '${name}NativeGuidPtr.ref';
}

/// Parameter projection for `List<Guid>` parameters.
class GuidListParameterProjection extends DefaultListParameterProjection {
  GuidListParameterProjection(super.parameter);

  @override
  String get type => 'List<Guid>';

  @override
  String get passArrayPreamble => '''
    final nativeGuids = <Pointer<GUID>>[];
    final pArray = calloc<GUID>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeGuidPtr = value.elementAt(i).toNativeGUID();
      pArray[i] = nativeGuidPtr.ref;
      nativeGuids.add(nativeGuidPtr);
    }''';

  @override
  String get passArrayPostamble => '''
    nativeGuids.forEach(free);
    free(pArray);''';
}
