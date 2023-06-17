// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
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
final class DefaultMethodProjection extends MethodProjection
    with _DefaultMixin {
  DefaultMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for getters.
final class DefaultGetterProjection extends GetterProjection
    with _DefaultMixin {
  DefaultGetterProjection(super.method, super.vtableOffset);
}

mixin _DefaultListMixin on MethodProjection {
  TypeProjection get typeArgProjection {
    final typeIdentifier = method.returnType.typeIdentifier;
    return typeIdentifier.isReferenceType
        ? TypeProjection(dereferenceType(dereferenceType(typeIdentifier)))
        : TypeProjection(dereferenceType(typeIdentifier));
  }

  @override
  String get returnType => 'List<${typeArgProjection.dartType}>';

  String get sizeIdentifier => 'pRetValueSize';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final $sizeIdentifier = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<${typeArgProjection.nativeType}>>();

    try {
      ${ffiCall()}

      return retValuePtr.value.toList(length: $sizeIdentifier.value);
    } finally {
      free($sizeIdentifier);
      free(retValuePtr);
    }
  }
''';
}

/// Default method projection for methods that return `List`.
final class DefaultListMethodProjection extends MethodProjection
    with _DefaultListMixin {
  DefaultListMethodProjection(super.method, super.vtableOffset);
}

/// Default getter projection for `List` getters.
final class DefaultListGetterProjection extends GetterProjection
    with _DefaultListMixin {
  DefaultListGetterProjection(super.method, super.vtableOffset);
}

/// Default setter projection for setters.
final class DefaultSetterProjection extends SetterProjection {
  DefaultSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value')}
  }
''';
}

/// Default parameter projection for parameters.
final class DefaultParameterProjection extends ParameterProjection {
  DefaultParameterProjection(super.parameter);

  @override
  String get localIdentifier {
    // Handle the __xxSize identifier specially as simpleArray params are
    // projected as List. See the DefaultListParameterProjection class below.
    if (isSimpleArraySizeIdentifier(parameter.name)) {
      // e.g. __xxSize -> xx
      final paramName = parameter.name.substring(2, parameter.name.length - 4);
      if (parameter.isInParam) return '$paramName.length';
      if (parameter.isOutParam && parameter.typeIdentifier.isPointerType) {
        return 'p${paramName.capitalize()}Size';
      }
    }

    return identifier;
  }
}

/// Default parameter projection for `List<T>` parameters (defined as
/// `simpleArrayType` in WinMD).
base class DefaultListParameterProjection extends ParameterProjection {
  DefaultListParameterProjection(super.parameter)
      // Size parameter is always comes before the List parameter
      : sizeParam = parameter.parent.parameters[parameter.parent.parameters
                .indexWhere((p) => p.name == parameter.name) -
            1],
        typeArgProjection = TypeProjection(
            parameter.typeIdentifier.isReferenceType
                ? dereferenceType(dereferenceType(parameter.typeIdentifier))
                : dereferenceType(parameter.typeIdentifier));

  final Parameter sizeParam;
  final TypeProjection typeArgProjection;

  // e.g. __dataSize -> dataSize
  String get sizeParamName => stripLeadingUnderscores(sizeParam.name);

  String get paramName => parameter.name;

  bool get isFillArrayStyleParam =>
      sizeParam.isOutParam && !sizeParam.typeIdentifier.isPointerType;

  bool get isPassArrayStyleParam => sizeParam.isInParam;

  bool get isReceiveArrayStyleParam =>
      sizeParam.isOutParam && sizeParam.typeIdentifier.isPointerType;

  /// Whether the method this parameter belongs to returns `void`.
  bool get isVoidMethod =>
      parameter.parent.returnType.typeIdentifier.isVoidType;

  /// Returns the name of the variable to use as the array size.
  ///
  /// On `void` methods (e.g. `DataReader.readBytes`), `xxSize` parameter from
  /// the method is used.
  ///
  /// On non-void methods (e.g. `IVector.getMany`), the number of items that
  /// were retrieved is returned so `retValuePtr.value` is used instead.
  String get fillArraySizeVariable =>
      isVoidMethod ? sizeParamName : 'retValuePtr.value';

  @override
  String get type => 'List<${typeArgProjection.dartType}>';

  String get fillArrayPreamble =>
      'final $localIdentifier = calloc<${typeArgProjection.nativeType}>($sizeParamName);';

  String get passArrayPreamble => '''
    final $localIdentifier = calloc<${typeArgProjection.nativeType}>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {
      $localIdentifier[i] = $paramName.elementAt(i);
    }''';

  String get receiveArrayPreamble => '''
    final $sizeIdentifier = calloc<Uint32>();
    final $localIdentifier = calloc<Pointer<${typeArgProjection.nativeType}>>();''';

  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      $paramName.addAll($localIdentifier.toList(length: $fillArraySizeVariable));
    }
    free($localIdentifier);''';

  String get passArrayPostamble => 'free($localIdentifier);';

  String get receiveArrayPostamble => '''
    if ($sizeIdentifier.value > 0) {
      $paramName.addAll($localIdentifier.value.toList(length: $sizeIdentifier.value));
    }
    free($sizeIdentifier);
    free($localIdentifier);''';

  String get sizeIdentifier => 'p${paramName.capitalize()}Size';

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
  String get localIdentifier => 'p${paramName.capitalize()}Array';
}
