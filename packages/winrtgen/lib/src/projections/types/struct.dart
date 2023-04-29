// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _StructMixin on MethodProjection {
  @override
  String get returnType => returnTypeProjection.typeIdentifier.shortName;

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return WinRT struct (e.g. `Point`).
class StructMethodProjection extends MethodProjection with _StructMixin {
  StructMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT struct getters.
class StructGetterProjection extends GetterProjection with _StructMixin {
  StructGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT struct setters.
class StructSetterProjection extends SetterProjection {
  StructSetterProjection(super.method, super.vtableOffset);

  String get dartType => param.typeProjection.typeIdentifier.shortName;

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final nativeStructPtr = value.toNative();

    try {
      ${ffiCall(identifier: 'nativeStructPtr.ref')}
    } finally {
      free(nativeStructPtr);
    }
  }
''';
}

/// Parameter projection for WinRT struct parameters.
class StructParameterProjection extends ParameterProjection {
  StructParameterProjection(super.parameter);

  @override
  String get type => typeProjection.typeIdentifier.shortName;

  @override
  String get preamble =>
      'final ${name}NativeStructPtr = $identifier.toNative();';

  @override
  String get postamble => 'free(${name}NativeStructPtr);';

  @override
  String get localIdentifier => '${name}NativeStructPtr.ref';
}

/// Parameter projection for `List<T extends WinRTStruct>` parameters.
class StructListParameterProjection extends DefaultListParameterProjection {
  StructListParameterProjection(super.parameter);

  String get nativeStructName => typeArgProjection.nativeType;

  @override
  String get type => 'List<${typeArgProjection.typeIdentifier.shortName}>';

  @override
  String get passArrayPreamble => '''
    final nativeStructPtrs = <Pointer<$nativeStructName>>[];
    final pArray = calloc<$nativeStructName>(value.length);
    for (var i = 0; i < value.length; i++) {
      final nativeStructPtr = value.elementAt(i).toNative();
      pArray[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }''';

  @override
  String get passArrayPostamble => '''
    nativeStructPtrs.forEach(free);
    free(pArray);''';
}
