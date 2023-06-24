// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../exception/exception.dart';
import '../models/models.dart';
import '../utilities/utilities.dart';
import 'method.dart';
import 'property.dart';
import 'types/types.dart';

abstract class GetterProjection extends PropertyProjection {
  GetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate getter projection for the [method] based on the
  /// return type.
  factory GetterProjection.create(Method method, int vtableOffset) {
    try {
      final projectionType = method.projectionType;
      return switch (projectionType) {
        ProjectionType.dartPrimitive =>
          DefaultGetterProjection(method, vtableOffset),
        ProjectionType.dartPrimitiveList ||
        ProjectionType.structList =>
          DefaultListGetterProjection(method, vtableOffset),
        ProjectionType.dateTime =>
          DateTimeGetterProjection(method, vtableOffset),
        ProjectionType.dateTimeList =>
          DateTimeListGetterProjection(method, vtableOffset),
        ProjectionType.delegate =>
          DelegateGetterProjection(method, vtableOffset),
        ProjectionType.duration =>
          DurationGetterProjection(method, vtableOffset),
        ProjectionType.durationList =>
          DurationListGetterProjection(method, vtableOffset),
        ProjectionType.enum_ => EnumGetterProjection(method, vtableOffset),
        ProjectionType.genericEnum =>
          GenericEnumGetterProjection(method, vtableOffset),
        ProjectionType.genericObject =>
          GenericObjectGetterProjection(method, vtableOffset),
        ProjectionType.guid => GuidGetterProjection(method, vtableOffset),
        ProjectionType.guidList =>
          GuidListGetterProjection(method, vtableOffset),
        ProjectionType.map => MapGetterProjection(method, vtableOffset),
        ProjectionType.mapView => MapViewGetterProjection(method, vtableOffset),
        ProjectionType.object => ObjectGetterProjection(method, vtableOffset),
        ProjectionType.objectList =>
          ObjectListGetterProjection(method, vtableOffset),
        ProjectionType.reference =>
          ReferenceGetterProjection(method, vtableOffset),
        ProjectionType.string => StringGetterProjection(method, vtableOffset),
        ProjectionType.stringList =>
          StringListGetterProjection(method, vtableOffset),
        ProjectionType.struct => StructGetterProjection(method, vtableOffset),
        ProjectionType.uri => UriGetterProjection(method, vtableOffset),
        ProjectionType.uriList => UriListGetterProjection(method, vtableOffset),
        ProjectionType.vector => VectorGetterProjection(method, vtableOffset),
        ProjectionType.vectorView =>
          VectorViewGetterProjection(method, vtableOffset),
        _ => throw WinRTGenException(
            'Unsupported projection type: $projectionType'),
      };
    } catch (_) {
      print('Failed to project getter "$method" from "${method.parent}".');
      rethrow;
    }
  }

  /// Attempts to create a [GetterProjection] from [fullyQualifiedType] and
  /// [methodName].
  ///
  /// ```dart
  /// final projection = GetterProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'get_Era');
  /// ```
  ///
  /// It does this by calling `MethodProjection.fromTypeAndMethodName`
  /// constructor with given [fullyQualifiedType] and [methodName].
  ///
  /// Throws an [Exception] if [methodName] is invalid or no [GetterProjection]
  /// matching [methodName] is found.
  factory GetterProjection.fromTypeAndMethodName(
      String fullyQualifiedType, String methodName) {
    final getPropertyRegExp = RegExp(r'^get(_{1,2})(\w+)$');
    if (!getPropertyRegExp.hasMatch(methodName)) {
      throw ArgumentError.value(
          methodName, 'methodName', 'Method name must start with `get_`.');
    }

    return MethodProjection.fromTypeAndMethodName(
        fullyQualifiedType, methodName) as GetterProjection;
  }

  // PropertyProjection overrides

  @override
  String get shortForm => camelCasedName;
}
