// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
  class_,
  dartPrimitive,
  dateTime,
  delegate,
  duration,
  enum_,
  guid,
  interface,
  map,
  mapView,
  object,
  pointer,
  reference,
  simpleArray,
  string,
  struct,
  uri,
  vector,
  vectorView,
  void_;

  /// Returns the appropriate [ProjectionType] for the [type].
  factory ProjectionType.from(TypeProjection type) {
    if (type.isReferenceType) {
      // Return the wrapped type's projection type.
      final typeProjection = TypeProjection(type.typeIdentifier.typeArg!);
      return typeProjection.projectionType;
    }

    if (type.isPointer) return ProjectionType.pointer;
    if (type.isSimpleArray) return ProjectionType.simpleArray;
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
    if (type.isWinRTClass) return ProjectionType.class_;
    if (type.isWinRTDelegate) return ProjectionType.delegate;
    if (type.isWinRTInterface) return ProjectionType.interface;
    if (type.isWinRTStruct) return ProjectionType.struct;
    if (type.isObject) return ProjectionType.object;

    throw UnsupportedError('Unsupported type: ${type.typeIdentifier}');
  }
}
