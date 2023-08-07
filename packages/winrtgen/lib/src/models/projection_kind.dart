// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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

  /// Returns the appropriate [ProjectionKind] for the [type].
  factory ProjectionKind.from(TypeProjection type) {
    if (type.isReferenceType) {
      final projectionKind = type.dereference().projectionKind;
      return projectionKind == ProjectionKind.dartPrimitive
          ? ProjectionKind.reference
          : projectionKind;
    }

    if (type.isClassVariableType) {
      final typeArgKind = TypeArgKind.from(type.typeIdentifier.name);
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

    if (type.isSimpleArray) {
      final projectionKind = type.dereference().projectionKind;
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

    if (type.isPointer) return ProjectionKind.pointer;
    if (type.isDateTime) return ProjectionKind.dateTime;
    if (type.isTimeSpan) return ProjectionKind.duration;
    if (type.isWinRTEnum) return ProjectionKind.enum_;
    if (type.isGuid) return ProjectionKind.struct;
    if (type.isAsyncAction) return ProjectionKind.asyncAction;
    if (type.isAsyncActionWithProgress) {
      return ProjectionKind.asyncActionWithProgress;
    }
    if (type.isAsyncOperation) return ProjectionKind.asyncOperation;
    if (type.isAsyncOperationWithProgress) {
      return ProjectionKind.asyncOperationWithProgress;
    }
    if (type.isMap) return ProjectionKind.map;
    if (type.isMapView) return ProjectionKind.mapView;
    if (type.isIReference) return ProjectionKind.ireference;
    if (type.isCharType || type.isString) return ProjectionKind.string;
    if (type.isUri) return ProjectionKind.uri;
    if (type.isVector) return ProjectionKind.vector;
    if (type.isVectorView) return ProjectionKind.vectorView;
    if (type.isVoid) return ProjectionKind.void_;
    if (type.isDartPrimitive) return ProjectionKind.dartPrimitive;
    if (type.isWinRTObject) return ProjectionKind.object;
    if (type.isWinRTDelegate) return ProjectionKind.delegate;
    if (type.isWinRTStruct) return ProjectionKind.struct;

    throw UnsupportedError('Unsupported TypeProjection: $type');
  }
}
