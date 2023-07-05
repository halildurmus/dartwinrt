// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../exception/exception.dart';
import '../projections/projections.dart';
import '../utilities/utilities.dart';
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
  dartPrimitiveList,
  dateTime,
  dateTimeList,
  delegate,
  duration,
  durationList,
  enum_,
  enumList,
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

  /// Returns the appropriate [ProjectionKind] for the [type].
  factory ProjectionKind.from(TypeProjection type) {
    if (type.isReferenceType) {
      return TypeProjection(dereferenceType(type.typeIdentifier))
          .projectionKind;
    }

    if (type.isClassVariableType) {
      final typeArg = TypeArgKind.from(type.typeIdentifier.name);
      return switch (typeArg) {
        TypeArgKind.inspectable ||
        TypeArgKind.nullableInspectable =>
          ProjectionKind.genericObject,
        TypeArgKind.winrtEnum ||
        TypeArgKind.winrtFlagsEnum =>
          ProjectionKind.genericEnum,
        _ => throw WinRTGenException('Unsupported TypeArgKind: $typeArg'),
      };
    }

    if (type.isSimpleArray) {
      var typeIdentifier = type.typeIdentifier;
      if (typeIdentifier.isReferenceType) {
        typeIdentifier = dereferenceType(typeIdentifier);
      }
      final projectionKind =
          TypeProjection(dereferenceType(typeIdentifier)).projectionKind;
      return switch (projectionKind) {
        ProjectionKind.dartPrimitive => ProjectionKind.dartPrimitiveList,
        ProjectionKind.dateTime => ProjectionKind.dateTimeList,
        ProjectionKind.duration => ProjectionKind.durationList,
        ProjectionKind.enum_ => ProjectionKind.enumList,
        ProjectionKind.genericEnum => ProjectionKind.genericEnumList,
        ProjectionKind.genericObject => ProjectionKind.genericObjectList,
        ProjectionKind.guid => ProjectionKind.guidList,
        ProjectionKind.object => ProjectionKind.objectList,
        ProjectionKind.string => ProjectionKind.stringList,
        ProjectionKind.struct => ProjectionKind.structList,
        ProjectionKind.uri => ProjectionKind.uriList,
        _ => throw WinRTGenException(
            'Unsupported projection kind: $projectionKind'),
      };
    }

    if (type.isPointer) return ProjectionKind.pointer;
    if (type.isDateTime) return ProjectionKind.dateTime;
    if (type.isTimeSpan) return ProjectionKind.duration;
    if (type.isWinRTEnum) return ProjectionKind.enum_;
    if (type.isGuid) return ProjectionKind.guid;
    if (type.isAsyncAction) return ProjectionKind.asyncAction;
    if (type.isAsyncOperation) return ProjectionKind.asyncOperation;
    if (type.isMap) return ProjectionKind.map;
    if (type.isMapView) return ProjectionKind.mapView;
    if (type.isReference) return ProjectionKind.reference;
    if (type.isString) return ProjectionKind.string;
    if (type.isUri) return ProjectionKind.uri;
    if (type.isVector) return ProjectionKind.vector;
    if (type.isVectorView) return ProjectionKind.vectorView;
    if (type.isVoid) return ProjectionKind.void_;
    if (type.isDartPrimitive) return ProjectionKind.dartPrimitive;
    if (type.isWinRTObject) return ProjectionKind.object;
    if (type.isWinRTDelegate) return ProjectionKind.delegate;
    if (type.isWinRTStruct) return ProjectionKind.struct;

    throw WinRTGenException('Unsupported type: ${type.typeIdentifier}');
  }
}
