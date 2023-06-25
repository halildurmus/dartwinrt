// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../../exception/exception.dart';
import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _EnumMixin on MethodProjection {
  @override
  String get returnType {
    final typeIdentifier = returnTypeProjection.typeIdentifier;
    if (typeIdentifier.type case final type?) return type.shortName;
    throw WinRTGenException('Type $typeIdentifier has no TypeDef.');
  }

  @override
  String get methodDeclaration => '''
  $methodHeader {
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

/// Method projection for methods that return WinRT enum (e.g. `AsyncStatus`).
final class EnumMethodProjection extends MethodProjection with _EnumMixin {
  EnumMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT enum getters.
final class EnumGetterProjection extends GetterProjection with _EnumMixin {
  EnumGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `List<T extends WinRTEnum>`.
final class EnumListMethodProjection extends DefaultListMethodProjection {
  EnumListMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<$typeArgShortName>';

  @override
  String get returnStatement => '''
return retValuePtr.value
  .toList(length: $sizeIdentifier.value)
  .map($typeArgShortName.from)
  .toList();''';
}

/// Getter projection for `List<T extends WinRTEnum>` getters.
final class EnumListGetterProjection extends DefaultListGetterProjection {
  EnumListGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<$typeArgShortName>';

  String get returnStatement => '''
return retValuePtr.value
  .toList(length: $sizeIdentifier.value)
  .map($typeArgShortName.from)
  .toList();''';
}

/// Setter projection for WinRT enum setters.
final class EnumSetterProjection extends SetterProjection {
  EnumSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.value')}
  }
''';
}

/// Parameter projection for WinRT enum parameters.
final class EnumParameterProjection extends ParameterProjection {
  EnumParameterProjection(super.parameter);

  @override
  String get type {
    if (parameter.typeIdentifier.type case final type?) return type.shortName;
    throw WinRTGenException('Type ${parameter.typeIdentifier} has no TypeDef.');
  }

  @override
  String get localIdentifier => '$identifier.value';
}

/// Parameter projection for `List<T extends WinRTEnum>` parameters.
final class EnumListParameterProjection extends DefaultListParameterProjection {
  EnumListParameterProjection(super.parameter);

  @override
  String get type => 'List<$typeArgShortName>';

  @override
  String get passArrayPreamble => '''
    final $localIdentifier = calloc<${typeArgProjection.nativeType}>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {
      $localIdentifier[i] = $paramName.elementAt(i).value;
    }
''';

  @override
  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      $paramName.addAll($localIdentifier.toList(length: $fillArraySizeVariable).map(enumCreator));
    }
    free($localIdentifier);''';
}
