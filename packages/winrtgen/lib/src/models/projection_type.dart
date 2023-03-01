// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../extensions/extensions.dart';
import '../projections/type.dart';

/// Represents the projection type of a WinRT type.
///
/// Used to determine the appropriate projection class to use when projecting
/// the WinRT method, property, and parameters.
///
/// For example, a parameter with projection type `ProjectionType.dateTime`
/// should be projected by `DateTimeParameterProjection` class.
enum ProjectionType {
  asyncAction,
  asyncActionWithProgress,
  asyncOperation,
  asyncOperationWithProgress,
  dartPrimitive,
  dartPrimitiveList,
  dateTime,
  dateTimeList,
  delegate,
  duration,
  durationList,
  enum_,
  genericEnum,
  genericEnumList,
  genericObject,
  genericObjectList,
  guid,
  guidList,
  map,
  mapView,
  object,
  objectList,
  pointer,
  reference,
  string,
  stringList,
  struct,
  structList,
  uri,
  uriList,
  vector,
  vectorView,
  void_;

  /// Returns the appropriate [ProjectionType] for the [type].
  factory ProjectionType.from(TypeProjection type) {
    if (type.isReferenceType) {
      final typeProjection = TypeProjection(type.typeIdentifier.typeArg!);
      return typeProjection.projectionType;
    }

    if (type.isClassVariableType) {
      return type.genericTypeArg.isEnum
          ? ProjectionType.genericEnum
          : ProjectionType.genericObject;
    }

    if (type.isSimpleArray) {
      final typeIdentifier = type.typeIdentifier;
      final projectionType = typeIdentifier.isReferenceType
          ? TypeProjection(typeIdentifier.typeArg!.typeArg!).projectionType
          : TypeProjection(typeIdentifier.typeArg!).projectionType;
      switch (projectionType) {
        case ProjectionType.dartPrimitive:
          return ProjectionType.dartPrimitiveList;
        case ProjectionType.dateTime:
          return ProjectionType.dateTimeList;
        case ProjectionType.duration:
          return ProjectionType.durationList;
        case ProjectionType.genericEnum:
          return ProjectionType.genericEnumList;
        case ProjectionType.genericObject:
          return ProjectionType.genericObjectList;
        case ProjectionType.guid:
          return ProjectionType.guidList;
        case ProjectionType.object:
          return ProjectionType.objectList;
        case ProjectionType.string:
          return ProjectionType.stringList;
        case ProjectionType.struct:
          return ProjectionType.structList;
        case ProjectionType.uri:
          return ProjectionType.uriList;
        default:
          throw UnsupportedError(
              'Unsupported projection type: $projectionType');
      }
    }

    if (type.isPointer) return ProjectionType.pointer;
    if (type.isDateTime) return ProjectionType.dateTime;
    if (type.isTimeSpan) return ProjectionType.duration;
    if (type.isWinRTEnum) return ProjectionType.enum_;
    if (type.isGuid) return ProjectionType.guid;
    if (type.isAsyncAction) return ProjectionType.asyncAction;
    if (type.isAsyncOperation) return ProjectionType.asyncOperation;
    if (type.isMap) return ProjectionType.map;
    if (type.isMapView) return ProjectionType.mapView;
    if (type.isReference) return ProjectionType.reference;
    if (type.isString) return ProjectionType.string;
    if (type.isUri) return ProjectionType.uri;
    if (type.isVector) return ProjectionType.vector;
    if (type.isVectorView) return ProjectionType.vectorView;
    if (type.isVoid) return ProjectionType.void_;
    if (type.isDartPrimitive) return ProjectionType.dartPrimitive;
    if (type.isWinRTObject) return ProjectionType.object;
    if (type.isWinRTDelegate) return ProjectionType.delegate;
    if (type.isWinRTStruct) return ProjectionType.struct;

    throw UnsupportedError('Unsupported type: ${type.typeIdentifier}');
  }
}
