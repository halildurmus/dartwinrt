// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/models.dart';
import '../utilities/utilities.dart';
import 'type.dart';
import 'types/types.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
base class ParameterProjection {
  ParameterProjection(this.parameter)
      :
        // Some getter parameters don't have a name so use 'retValuePtr' instead
        name = parameter.name.isNotEmpty || parameter.typeIdentifier.isVoidType
            ? parameter.name
            : 'retValuePtr',
        typeProjection = TypeProjection(parameter.typeIdentifier,
            isInParam: parameter.isInParam);

  /// The retrieved Windows metadata for the parameter.
  final Parameter parameter;

  /// The name of the parameter.
  final String name;

  /// The type projection of the parameter.
  final TypeProjection typeProjection;

  /// Returns the appropriate projection for the parameter.
  factory ParameterProjection.create(Parameter param) {
    try {
      return switch (param.projectionKind) {
        ProjectionKind.asyncAction => AsyncActionParameterProjection(param),
        ProjectionKind.asyncActionWithProgress =>
          AsyncActionWithProgressParameterProjection(param),
        ProjectionKind.asyncOperation =>
          AsyncOperationParameterProjection(param),
        ProjectionKind.asyncOperationWithProgress =>
          AsyncOperationWithProgressParameterProjection(param),
        ProjectionKind.dartPrimitive ||
        ProjectionKind.pointer ||
        ProjectionKind.void_ =>
          ParameterProjection(param),
        ProjectionKind.dartPrimitiveArray ||
        ProjectionKind.dateTimeArray ||
        ProjectionKind.durationArray ||
        ProjectionKind.enumArray ||
        ProjectionKind.genericEnumArray ||
        ProjectionKind.genericObjectArray ||
        ProjectionKind.objectArray ||
        ProjectionKind.stringArray ||
        ProjectionKind.structArray ||
        ProjectionKind.uriArray =>
          ArrayParameterProjection.create(param),
        ProjectionKind.dateTime => DateTimeParameterProjection(param),
        ProjectionKind.delegate => DelegateParameterProjection(param),
        ProjectionKind.duration => DurationParameterProjection(param),
        ProjectionKind.enum_ => EnumParameterProjection(param),
        ProjectionKind.genericEnum => GenericEnumParameterProjection(param),
        ProjectionKind.genericObject => GenericObjectParameterProjection(param),
        ProjectionKind.ireference => IReferenceParameterProjection(param),
        ProjectionKind.map => MapParameterProjection(param),
        ProjectionKind.mapView => MapViewParameterProjection(param),
        ProjectionKind.object => ObjectParameterProjection(param),
        ProjectionKind.record => throw WinmdException(
            'Unsupported projection kind: ${param.projectionKind}'),
        ProjectionKind.reference => ReferenceParameterProjection(param),
        ProjectionKind.string => StringParameterProjection(param),
        ProjectionKind.struct => StructParameterProjection(param),
        ProjectionKind.uri => UriParameterProjection(param),
        ProjectionKind.vector => VectorParameterProjection(param),
        ProjectionKind.vectorView => VectorViewParameterProjection(param),
      };
    } catch (_) {
      print("Failed to project parameter '$param' from '${param.parent}'.");
      rethrow;
    }
  }

  bool get isInParam => parameter.isInParam;

  bool get isOutParam => parameter.isOutParam;

  bool get isReturnParam => !isInParam && !isOutParam;

  String get ffiProjection => '${typeProjection.nativeType} $identifier';

  String get dartProjection => '${typeProjection.dartType} $identifier';

  /// The method that this parameter is a part of.
  Method get method => parameter.parent;

  String get paramProjection => '$type $identifier';

  /// The type of the parameter (e.g. `String`).
  String get type => typeProjection.dartType;

  String get shortTypeName => typeProjection.typeIdentifier.shortName;

  String get creatorPreamble => '';

  String get creator => '$identifier.value';

  String get into => identifier;

  /// Whether the type of the parameter is nullable.
  bool get isNullable => type.endsWith('?');

  /// The name of the parameter that is safe to use as a Dart identifier.
  String get identifier => safeIdentifierForString(name.toCamelCase());

  bool get needsAllocation {
    if (parameter.isSimpleArraySizeParam && isOutParam) return false;
    if (type == 'void') return false;
    return !isInParam;
  }

  bool get needsDeallocation => needsAllocation;

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  List<String> get preambles {
    if (!needsAllocation) return [];
    final nativeType = typeProjection.isReferenceType
        ? typeArguments(typeProjection.nativeType)
        : typeProjection.nativeType;
    return ['final $identifier = calloc<$nativeType>();'];
  }

  String get nullCheck => '';

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  List<String> get postambles =>
      needsDeallocation ? ['free($identifier);'] : [];

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `value` -> `valueHString`)
  String get localIdentifier {
    // Handle the __xxSize identifier specially as simpleArray parameters are
    // projected as List. See the ArrayParameterProjection class.
    if (parameter.isSimpleArraySizeParam) {
      final identifier = parameter.toArrayParamName();
      return switch (parameter.arrayPassingStyle) {
        ArrayPassingStyle.fill ||
        ArrayPassingStyle.receive =>
          '${identifier}Size',
        ArrayPassingStyle.pass => '$identifier.length',
      };
    }

    return isInParam ? into : identifier;
  }

  @override
  String toString() => '$type $identifier';
}
