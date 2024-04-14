// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../projections/projections.dart';
import 'type_arg_kind.dart';

/// Represents the projection kind of a WinRT type.
///
/// Used to determine the appropriate projection class to use when projecting
/// the WinRT method, property, and parameters.
enum ProjectionKind {
  asyncAction,
  asyncActionWithProgress,
  asyncOperation,
  asyncOperationWithProgress,
  dartPrimitive,
  dartPrimitiveArray,
  dateTime,
  dateTimeArray,
  delegate,
  duration,
  durationArray,
  enum_,
  enumArray,
  genericEnum,
  genericEnumArray,
  genericObject,
  genericObjectArray,
  ireference,
  map,
  mapView,
  object,
  objectArray,
  pointer,
  record,
  reference,
  string,
  stringArray,
  struct,
  structArray,
  uri,
  uriArray,
  vector,
  vectorView,
  void_;

  /// Returns the appropriate [ProjectionKind] for the [method].
  factory ProjectionKind.fromMethod(Method method) =>
      method.parameters.any((p) => p.isOutParam)
          ? ProjectionKind.record
          : ProjectionKind.fromTypeIdentifier(method.returnType.typeIdentifier);

  /// Returns the appropriate [ProjectionKind] for the [typeIdentifier].
  factory ProjectionKind.fromTypeIdentifier(TypeIdentifier typeIdentifier) =>
      ProjectionKind.fromTypeProjection(TypeProjection(typeIdentifier));

  /// Returns the appropriate [ProjectionKind] for the [projection].
  factory ProjectionKind.fromTypeProjection(TypeProjection projection) {
    if (projection.isCLanguageOptionalModifier ||
        projection.isCLanguageRequiredModifier ||
        projection.isReferenceType) {
      final projectionKind =
          ProjectionKind.fromTypeProjection(projection.dereference());
      return projectionKind == ProjectionKind.dartPrimitive
          ? ProjectionKind.reference
          : projectionKind;
    }

    if (projection.isClassVariableType) {
      final typeArgKind = TypeArgKind.fromName(projection.typeIdentifier.name);
      return switch (typeArgKind) {
        TypeArgKind.inspectable ||
        TypeArgKind.nullableInspectable =>
          ProjectionKind.genericObject,
        TypeArgKind.winrtEnum ||
        TypeArgKind.winrtFlagsEnum =>
          ProjectionKind.genericEnum,
        _ => throw UnsupportedError('Unsupported TypeArgKind: $typeArgKind'),
      };
    }

    if (projection.isSimpleArray) {
      final projectionKind =
          ProjectionKind.fromTypeProjection(projection.dereference());
      return switch (projectionKind) {
        ProjectionKind.dartPrimitive => ProjectionKind.dartPrimitiveArray,
        ProjectionKind.dateTime => ProjectionKind.dateTimeArray,
        ProjectionKind.duration => ProjectionKind.durationArray,
        ProjectionKind.enum_ => ProjectionKind.enumArray,
        ProjectionKind.genericEnum => ProjectionKind.genericEnumArray,
        ProjectionKind.genericObject => ProjectionKind.genericObjectArray,
        ProjectionKind.object => ProjectionKind.objectArray,
        ProjectionKind.string => ProjectionKind.stringArray,
        ProjectionKind.struct => ProjectionKind.structArray,
        ProjectionKind.uri => ProjectionKind.uriArray,
        _ =>
          throw UnsupportedError('Unsupported ProjectionKind: $projectionKind'),
      };
    }

    if (projection.isPointer) return ProjectionKind.pointer;
    if (projection.isDateTime) return ProjectionKind.dateTime;
    if (projection.isTimeSpan) return ProjectionKind.duration;
    if (projection.isWinRTEnum) return ProjectionKind.enum_;
    if (projection.isGuid) return ProjectionKind.struct;
    if (projection.isAsyncAction) return ProjectionKind.asyncAction;
    if (projection.isAsyncActionWithProgress) {
      return ProjectionKind.asyncActionWithProgress;
    }
    if (projection.isAsyncOperation) return ProjectionKind.asyncOperation;
    if (projection.isAsyncOperationWithProgress) {
      return ProjectionKind.asyncOperationWithProgress;
    }
    if (projection.isMap) return ProjectionKind.map;
    if (projection.isMapView) return ProjectionKind.mapView;
    if (projection.isIReference) return ProjectionKind.ireference;
    if (projection.isCharType || projection.isString) {
      return ProjectionKind.string;
    }
    if (projection.isUri) return ProjectionKind.uri;
    if (projection.isVector) return ProjectionKind.vector;
    if (projection.isVectorView) return ProjectionKind.vectorView;
    if (projection.isVoid) return ProjectionKind.void_;
    if (projection.isDartPrimitive) return ProjectionKind.dartPrimitive;
    if (projection.isWinRTObject) return ProjectionKind.object;
    if (projection.isWinRTDelegate) return ProjectionKind.delegate;
    if (projection.isWinRTStruct) return ProjectionKind.struct;

    throw UnsupportedError('Unsupported TypeProjection: $projection');
  }
}
