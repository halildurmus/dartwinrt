// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../models/type_arg.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import 'default.dart';

mixin _GenericEnumMixin on MethodProjection {
  String get enumCreator => method.parent.genericParams.length == 2 &&
          method.parent.genericParams.first.name == returnType
      ? '_enumKeyCreator!'
      : '_enumCreator!';

  @override
  String get returnType {
    final genericParamSequence =
        returnTypeProjection.typeIdentifier.genericParameterSequence!;
    return method.parent.genericParams[genericParamSequence].name;
  }
}

/// Method projection for generic methods that return a WinRT enum.
class GenericEnumMethodProjection extends MethodProjection
    with _GenericEnumMixin {
  GenericEnumMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return $enumCreator(retValuePtr.value);
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for generic getters that return a WinRT enum.
class GenericEnumGetterProjection extends GetterProjection
    with _GenericEnumMixin {
  GenericEnumGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return $enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Parameter projection for `T extends WinRTEnum` parameters.
class GenericEnumParameterProjection extends ParameterProjection {
  GenericEnumParameterProjection(super.parameter);

  @override
  String get type => method.parent
      .genericParams[parameter.typeIdentifier.genericParameterSequence!].name;

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '($identifier as WinRTEnum).value';
}

/// Parameter projection for `List<T extends WinRTEnum>` parameters.
class GenericEnumListParameterProjection
    extends DefaultListParameterProjection {
  GenericEnumListParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence =
        typeArgProjection.typeIdentifier.genericParameterSequence!;
    final genericParam = method.parent.genericParams[genericParamSequence].name;
    return 'List<$genericParam>';
  }

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<${typeArgProjection.nativeType}>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<WinRTEnum>).elementAt(i).value;
    }
''';

  @override
  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray.toList(length: valueSize).map(_enumCreator!));
    }
    free(pArray);''';
}

mixin _GenericObjectMixin on MethodProjection {
  bool get isNullable =>
      returnTypeProjection.genericTypeArg == TypeArg.nullableInspectable;

  String get typeParameter {
    final genericParamSequence =
        returnTypeProjection.typeIdentifier.genericParameterSequence!;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get returnType => typeParameter;

  String get nullCheck => isNullable
      ? '''
    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null as $typeParameter;
    }
'''
      : '';
}

/// Method projection for generic methods that return a WinRT class or
/// interface.
class GenericObjectMethodProjection extends MethodProjection
    with _GenericObjectMixin {
  GenericObjectMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    $nullCheck

    return _creator!(retValuePtr);
  }
''';
}

/// Getter projection for generic getters that return a WinRT class or
/// interface.
class GenericObjectGetterProjection extends GetterProjection
    with _GenericObjectMixin {
  GenericObjectGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $typeParameter get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    return _creator!(retValuePtr);
  }
''';
}

/// Parameter projection for `T extends IInspectable` parameters.
class GenericObjectParameterProjection extends ParameterProjection {
  GenericObjectParameterProjection(super.parameter);

  @override
  String get type => method.parent
      .genericParams[parameter.typeIdentifier.genericParameterSequence!].name;

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '($identifier as IInspectable).ptr.ref.lpVtbl';
}

/// Parameter projection for `List<T extends IInspectable>` parameters.
class GenericObjectListParameterProjection
    extends DefaultListParameterProjection {
  GenericObjectListParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence =
        typeArgProjection.typeIdentifier.genericParameterSequence!;
    final genericParam = method.parent.genericParams[genericParamSequence].name;
    return 'List<$genericParam>';
  }

  @override
  String get fillArrayPreamble =>
      'final pArray = calloc<COMObject>(valueSize);';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<COMObject>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = (value as List<IInspectable>).elementAt(i).ptr.ref;
    }''';

  @override
  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray.toList(_creator!, length: valueSize));
    }
    free(pArray);''';
}
