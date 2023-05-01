// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../models/models.dart';
import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import 'default.dart';

mixin _GenericEnumMixin on MethodProjection {
  String get enumCreator => switch (method.parent.genericParams) {
        [final param, _] when param.name == returnType => 'enumKeyCreator',
        _ => 'enumCreator'
      };

  @override
  String get returnType {
    final genericParamSequence =
        returnTypeProjection.typeIdentifier.genericParamSequence;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
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

/// Method projection for generic methods that return WinRT enum.
final class GenericEnumMethodProjection extends MethodProjection
    with _GenericEnumMixin {
  GenericEnumMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for generic getters that return a WinRT enum.
final class GenericEnumGetterProjection extends GetterProjection
    with _GenericEnumMixin {
  GenericEnumGetterProjection(super.method, super.vtableOffset);
}

/// Parameter projection for `T extends WinRTEnum` parameters.
final class GenericEnumParameterProjection extends ParameterProjection {
  GenericEnumParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence = parameter.typeIdentifier.genericParamSequence;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get localIdentifier => '($identifier as WinRTEnum).value';
}

/// Parameter projection for `List<T extends WinRTEnum>` parameters.
final class GenericEnumListParameterProjection
    extends DefaultListParameterProjection {
  GenericEnumListParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence =
        typeArgProjection.typeIdentifier.genericParamSequence;
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
    if ($fillArraySizeVariable > 0) {
      value.addAll(pArray.toList(length: $fillArraySizeVariable).map(enumCreator));
    }
    free(pArray);''';
}

mixin _GenericObjectMixin on MethodProjection {
  @override
  bool get isNullable =>
      returnTypeProjection.genericTypeArg == TypeArg.nullableInspectable;

  String get typeParameter {
    final genericParamSequence =
        returnTypeProjection.typeIdentifier.genericParamSequence;
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

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    $nullCheck

    return creator(retValuePtr);
  }
''';
}

/// Method projection for generic methods that return WinRT class or interface.
final class GenericObjectMethodProjection extends MethodProjection
    with _GenericObjectMixin {
  GenericObjectMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for generic getters that return a WinRT class or
/// interface.
final class GenericObjectGetterProjection extends GetterProjection
    with _GenericObjectMixin {
  GenericObjectGetterProjection(super.method, super.vtableOffset);
}

/// Parameter projection for `T extends IInspectable` parameters.
final class GenericObjectParameterProjection extends ParameterProjection {
  GenericObjectParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence = parameter.typeIdentifier.genericParamSequence;
    return method.parent.genericParams[genericParamSequence].name;
  }

  @override
  String get localIdentifier => '($identifier as IInspectable).ptr.ref.lpVtbl';
}

/// Parameter projection for `List<T extends IInspectable>` parameters.
final class GenericObjectListParameterProjection
    extends DefaultListParameterProjection {
  GenericObjectListParameterProjection(super.parameter);

  @override
  String get type {
    final genericParamSequence =
        typeArgProjection.typeIdentifier.genericParamSequence;
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
    if ($fillArraySizeVariable > 0) {
      value.addAll(pArray.toList(creator, length: $fillArraySizeVariable));
    }
    free(pArray);''';
}
