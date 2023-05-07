// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../exception/exception.dart';
import '../projections/projections.dart';
import '../utilities/utilities.dart';
import 'type_arg.dart';

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
      return TypeProjection(dereferenceType(type.typeIdentifier))
          .projectionType;
    }

    if (type.isClassVariableType) {
      final typeArg = TypeArg.from(type.typeIdentifier.name);
      return switch (typeArg) {
        TypeArg.inspectable ||
        TypeArg.nullableInspectable =>
          ProjectionType.genericObject,
        TypeArg.winrtEnum ||
        TypeArg.winrtFlagsEnum =>
          ProjectionType.genericEnum,
        _ => throw WinRTGenException('Unsupported TypeArg: $typeArg'),
      };
    }

    if (type.isSimpleArray) {
      var typeIdentifier = type.typeIdentifier;
      if (typeIdentifier.isReferenceType) {
        typeIdentifier = dereferenceType(typeIdentifier);
      }
      final projectionType =
          TypeProjection(dereferenceType(typeIdentifier)).projectionType;
      return switch (projectionType) {
        ProjectionType.dartPrimitive => ProjectionType.dartPrimitiveList,
        ProjectionType.dateTime => ProjectionType.dateTimeList,
        ProjectionType.duration => ProjectionType.durationList,
        ProjectionType.genericEnum => ProjectionType.genericEnumList,
        ProjectionType.genericObject => ProjectionType.genericObjectList,
        ProjectionType.guid => ProjectionType.guidList,
        ProjectionType.object => ProjectionType.objectList,
        ProjectionType.string => ProjectionType.stringList,
        ProjectionType.struct => ProjectionType.structList,
        ProjectionType.uri => ProjectionType.uriList,
        _ => throw WinRTGenException(
            'Unsupported projection type: $projectionType'),
      };
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

    throw WinRTGenException('Unsupported type: ${type.typeIdentifier}');
  }
}
