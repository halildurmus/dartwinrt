// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import '../type.dart';

/// Default method projection for methods.
class DefaultMethodProjection extends MethodProjection {
  DefaultMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.value;
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Default getter projection for getters.
class DefaultGetterProjection extends GetterProjection {
  DefaultGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
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

/// Default setter projection for setters.
class DefaultSetterProjection extends SetterProjection {
  DefaultSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${param.type} value) {
    ${ffiCall(params: 'value')}
  }
''';
}

/// Default parameter projection for parameters.
class DefaultParameterProjection extends ParameterProjection {
  DefaultParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier {
    // Handle the __valueSize identifier specially as simpleArray params
    // are projected as List.
    // See DefaultListParameterProjection class below.
    if (parameter.name == '__valueSize') {
      if (parameter.isInParam) return 'value.length';
      if (parameter.isOutParam &&
          parameter.typeIdentifier.baseType == BaseType.pointerTypeModifier) {
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
            parameter.typeIdentifier.baseType == BaseType.referenceTypeModifier
                ? parameter.typeIdentifier.typeArg!.typeArg!
                : parameter.typeIdentifier.typeArg!);

  final Parameter valueSizeParam;
  final TypeProjection typeArgProjection;

  bool get isFillArrayStyleParam =>
      valueSizeParam.isOutParam &&
      valueSizeParam.typeIdentifier.baseType != BaseType.pointerTypeModifier;

  bool get isPassArrayStyleParam => valueSizeParam.isInParam;

  bool get isReceiveArrayStyleParam =>
      valueSizeParam.isOutParam &&
      valueSizeParam.typeIdentifier.baseType == BaseType.pointerTypeModifier;

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
      value.addAll(pArray.toList(length: valueSize));
    }
    free(pArray);''';

  String get passArrayPostamble => 'free(pArray);';

  String get receiveArrayPostamble => '''
    value.addAll(pArray.value.toList(length: pValueSize.value));
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
