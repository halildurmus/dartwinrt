// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../extensions/extensions.dart';
import '../../models/models.dart';
import '../projections.dart';

/// Parameter projection for `List<T>` parameters (defined as `simpleArrayType`
/// in Metadata).
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

  ParameterProjection? _typeArgParamProjection;

  ParameterProjection get typeArgParamProjection =>
      _typeArgParamProjection ??= _cacheTypeArgParamProjection();

  ParameterProjection _cacheTypeArgParamProjection() {
    final param = parameter.clone();
    param.typeIdentifier = param.typeIdentifier.isReferenceType
        ? param.typeIdentifier.dereference().dereference()
        : param.typeIdentifier.dereference();
    return ParameterProjection.create(param);
  }

  String get typeArg => typeArgParamProjection.type;

  String get sizeIdentifier => '${identifier}Size';

  String get nativeType => typeArgParamProjection.typeProjection.nativeType;

  /// Returns the identifier to use as the array size.
  ///
  /// On `void` methods (e.g., `DataReader.readBytes`), `xxSize` parameter from
  /// the method is used.
  ///
  /// On non-void methods (e.g., `IVector.getMany`), the number of items that
  /// were retrieved is returned so `retValuePtr.value` is used instead.
  String get fillArraySizeIdentifier => method.isVoid
      ? sizeIdentifier
      // Some getter parameters don't have a name so use 'retValuePtr' instead
      : method.returnType.name.isNotEmpty
          ? '${method.returnType.name}.value'
          : 'retValuePtr.value';

  bool get typeArgIsCharType =>
      typeArgParamProjection.typeProjection.isCharType;

  bool get typeArgIsObjectType =>
      typeArgParamProjection.typeProjection.isObjectType;

  String get toListArg {
    final typeArgParamCreator = typeArgParamProjection.creator;
    return switch (typeArgParamProjection) {
      EnumParameterProjection() ||
      ObjectParameterProjection() when !typeArgIsObjectType =>
        typeArgParamCreator.substring(0, typeArgParamCreator.indexOf('(')),
      GenericEnumParameterProjection() => 'enumCreator',
      GenericObjectParameterProjection() => 'creator',
      _ => ''
    };
  }

  String get toListIdentifier => switch (typeArgParamProjection) {
        DateTimeParameterProjection() => 'toDateTimeList',
        DurationParameterProjection() => 'toDurationList',
        EnumParameterProjection() ||
        GenericEnumParameterProjection() =>
          'toEnumList',
        ObjectParameterProjection() when typeArgIsObjectType => 'toObjectList',
        StringParameterProjection() when typeArgIsCharType => 'toStringList',
        UriParameterProjection() => 'toUriList',
        _ => 'toList'
      };

  String get toListCreatorIdentifier => this is ReceiveArrayParameterProjection
      ? '$localIdentifier.value'
      : localIdentifier;

  String get toListLengthIdentifier => this is FillArrayParameterProjection
      ? fillArraySizeIdentifier
      : '$sizeIdentifier.value';

  @override
  String get type => 'List<$typeArg>';

  @override
  String get creator {
    final buffer = StringBuffer()
      ..write('$toListCreatorIdentifier.$toListIdentifier(');
    if (toListArg.isNotEmpty) buffer.write('$toListArg, ');
    buffer.write('length: $toListLengthIdentifier)');
    return buffer.toString();
  }

  @override
  String get into => '${identifier}Array';

  @override
  bool get needsAllocation => true;
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

  String get nativeType => typeArgParamProjection.typeProjection.nativeType;

  String get cast => switch (typeArgParamProjection) {
        GenericEnumParameterProjection() when nativeType == 'Uint32' =>
          '.cast<WinRTFlagsEnum>()',
        GenericEnumParameterProjection() when nativeType == 'Int32' =>
          '.cast<WinRTEnum>()',
        GenericObjectParameterProjection() => '.cast<IInspectable>()',
        _ => '',
      };

  String get genericTypeArg => switch (typeArgParamProjection) {
        final projection
            when !typeArgIsCharType &&
                projection is! GenericEnumParameterProjection &&
                (projection.typeProjection.isDouble ||
                    projection.typeProjection.isInteger) =>
          '<$nativeType>',
        _ => '',
      };

  String get toArrayIdentifier => switch (typeArgParamProjection) {
        StringParameterProjection() when typeArgIsCharType => 'toUint16Array',
        _ => 'toArray'
      };

  @override
  List<String> get preambles => [
        'final $localIdentifier = $identifier$cast.$toArrayIdentifier$genericTypeArg();'
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
