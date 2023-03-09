// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import '../type.dart';

mixin _DefaultMixin on MethodProjection {
  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Default method projection for methods.
class DefaultMethodProjection extends MethodProjection with _DefaultMixin {
  DefaultMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for getters.
class DefaultGetterProjection extends GetterProjection with _DefaultMixin {
  DefaultGetterProjection(super.method, super.vtableOffset);
}

mixin _DefaultListMixin on MethodProjection {
  late final typeArgProjection = TypeProjection(
      method.returnType.typeIdentifier.isReferenceType
          ? method.returnType.typeIdentifier.typeArg!.typeArg!
          : method.returnType.typeIdentifier.typeArg!);

  @override
  String get returnType => 'List<${typeArgProjection.dartType}>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<${typeArgProjection.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.value.toList(length: pValueSize.value);
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Default method projection for methods that return `List`.
class DefaultListMethodProjection extends MethodProjection
    with _DefaultListMixin {
  DefaultListMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for `List` getters.
class DefaultListGetterProjection extends GetterProjection
    with _DefaultListMixin {
  DefaultListGetterProjection(super.method, super.vtableOffset);
}

/// Default setter projection for setters.
class DefaultSetterProjection extends SetterProjection {
  DefaultSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value')}
  }
''';
}

/// Default parameter projection for parameters.
class DefaultParameterProjection extends ParameterProjection {
  DefaultParameterProjection(super.parameter);

  @override
  String get localIdentifier {
    // Handle the __valueSize identifier specially as simpleArray params
    // are projected as List.
    // See DefaultListParameterProjection class below.
    if (parameter.name == '__valueSize') {
      if (parameter.isInParam) return 'value.length';
      if (parameter.isOutParam && parameter.typeIdentifier.isPointerType) {
        return 'pValueSize';
      }
    }

    return identifier;
  }
}

/// Default parameter projection for `List<T>` parameters (defined as
/// `simpleArrayType` in WinMD).
class DefaultListParameterProjection extends ParameterProjection {
  DefaultListParameterProjection(super.parameter)
      : valueSizeParam = parameter.parent.parameters
            .firstWhere((p) => p.name == '__valueSize'),
        typeArgProjection = TypeProjection(
            parameter.typeIdentifier.isReferenceType
                ? parameter.typeIdentifier.typeArg!.typeArg!
                : parameter.typeIdentifier.typeArg!);

  final Parameter valueSizeParam;
  final TypeProjection typeArgProjection;

  bool get isFillArrayStyleParam =>
      valueSizeParam.isOutParam && !valueSizeParam.typeIdentifier.isPointerType;

  bool get isPassArrayStyleParam => valueSizeParam.isInParam;

  bool get isReceiveArrayStyleParam =>
      valueSizeParam.isOutParam && valueSizeParam.typeIdentifier.isPointerType;

  @override
  String get type => 'List<${typeArgProjection.dartType}>';

  String get fillArrayPreamble =>
      'final pArray = calloc<${typeArgProjection.nativeType}>(valueSize);';

  String get passArrayPreamble => '''
    final pArray = calloc<${typeArgProjection.nativeType}>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i);
    }''';

  String get receiveArrayPreamble => '''
    final pValueSize = calloc<Uint32>();
    final pArray = calloc<Pointer<${typeArgProjection.nativeType}>>();''';

  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray.toList(length: retValuePtr.value));
    }
    free(pArray);''';

  String get passArrayPostamble => 'free(pArray);';

  String get receiveArrayPostamble => '''
    if (pValueSize.value > 0) {
      value.addAll(pArray.value.toList(length: pValueSize.value));
    }
    free(pValueSize);
    free(pArray);''';

  @override
  String get preamble {
    if (isFillArrayStyleParam) return fillArrayPreamble;
    if (isPassArrayStyleParam) return passArrayPreamble;
    return receiveArrayPreamble;
  }

  @override
  String get postamble {
    if (isFillArrayStyleParam) return fillArrayPostamble;
    if (isPassArrayStyleParam) return passArrayPostamble;
    return receiveArrayPostamble;
  }

  @override
  String get localIdentifier => 'pArray';
}
