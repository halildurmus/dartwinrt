// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../models/models.dart';
import '../../utilities/utilities.dart';
import '../projections.dart';

/// Parameter projection for `List<T>` parameters (defined as `simpleArrayType`
/// in WinMD).
abstract base class ArrayParameterProjection extends ParameterProjection {
  ArrayParameterProjection(super.parameter);

  /// Returns the appropriate projection for the parameter.
  factory ArrayParameterProjection.create(Parameter param) {
    final Parameter(:arrayPassingStyle, :parent, :projectionKind) = param;
    try {
      return switch (arrayPassingStyle) {
        ArrayPassingStyle.fill => FillArrayParameterProjection(param),
        ArrayPassingStyle.pass
            when projectionKind == ProjectionKind.structArray =>
          StructPassArrayParameterProjection(param),
        ArrayPassingStyle.pass => PassArrayParameterProjection(param),
        ArrayPassingStyle.receive => ReceiveArrayParameterProjection(param),
      };
    } catch (_) {
      print("Failed to project parameter '$param' from '$parent'.");
      rethrow;
    }
  }

  @override
  String get type => 'List<$typeArg>';

  @override
  String get creator {
    final buffer = StringBuffer()
      ..write('$toListCreatorIdentifier.$toListIdentifier(');
    if (typeArgParamProjection.toListArg.isNotEmpty) {
      buffer.write('${typeArgParamProjection.toListArg}, ');
    }
    buffer.write('length: $toListLengthIdentifier)');
    if (typeArgParamProjection.toListCreator.isNotEmpty) {
      buffer.write(typeArgParamProjection.toListCreator);
    }
    return buffer.toString();
  }

  @override
  String get into => '${identifier}Array';

  @override
  bool get needsAllocation => true;

  ParameterProjection? _typeArgParamProjection;

  ParameterProjection get typeArgParamProjection =>
      _typeArgParamProjection ??= _cacheTypeArgParamProjection();

  ParameterProjection _cacheTypeArgParamProjection() {
    final param = parameter.clone();
    param.typeIdentifier = param.typeIdentifier.isReferenceType
        ? dereferenceType(dereferenceType(param.typeIdentifier))
        : dereferenceType(param.typeIdentifier);
    return ParameterProjection.create(param);
  }

  String get typeArg => typeArgParamProjection.type;

  String get sizeIdentifier => '${identifier}Size';

  String get nativeType => typeArgParamProjection.typeProjection.nativeType;

  /// Returns the identifier to use as the array size.
  ///
  /// On `void` methods (e.g. `DataReader.readBytes`), `xxSize` parameter from
  /// the method is used.
  ///
  /// On non-void methods (e.g. `IVector.getMany`), the number of items that
  /// were retrieved is returned so `retValuePtr.value` is used instead.
  String get fillArraySizeIdentifier => method.isVoid
      ? sizeIdentifier
      // Some getter parameters don't have a name so use 'retValuePtr' instead
      : method.returnType.name.isNotEmpty
          ? '${method.returnType.name}.value'
          : 'retValuePtr.value';

  String get toListIdentifier =>
      typeArgParamProjection.toListIdentifier.isNotEmpty
          ? typeArgParamProjection.toListIdentifier
          : 'toList';

  String get toListCreatorIdentifier => this is ReceiveArrayParameterProjection
      ? '$localIdentifier.value'
      : localIdentifier;

  String get toListLengthIdentifier => this is FillArrayParameterProjection
      ? fillArraySizeIdentifier
      : '$sizeIdentifier.value';
}

base class FillArrayParameterProjection extends ArrayParameterProjection {
  FillArrayParameterProjection(super.parameter);

  @override
  List<String> get preambles =>
      ['final $identifier = calloc<$nativeType>($sizeIdentifier);'];

  @override
  List<String> get postambles => ['free($identifier);'];
}

base class PassArrayParameterProjection extends ArrayParameterProjection {
  PassArrayParameterProjection(super.parameter);

  @override
  List<String> get preambles => [
        'final $localIdentifier = calloc<$nativeType>($identifier.length);',
        '''
    for (var i = 0; i < $identifier.length; i++) {
      $localIdentifier[i] = ${typeArgParamProjection.toListInto};
    }'''
      ];

  @override
  List<String> get postambles => ['free($localIdentifier);'];
}

base class ReceiveArrayParameterProjection extends ArrayParameterProjection {
  ReceiveArrayParameterProjection(super.parameter);

  @override
  List<String> get preambles => [
        'final $sizeIdentifier = calloc<Uint32>();',
        'final $identifier = calloc<Pointer<$nativeType>>();'
      ];

  @override
  List<String> get postambles =>
      ['free($sizeIdentifier);', 'free($identifier);'];
}
