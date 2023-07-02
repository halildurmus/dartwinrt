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
      final projectionKind = method.projectionKind;
      return switch (projectionKind) {
        ProjectionKind.dartPrimitive ||
        ProjectionKind.dateTime ||
        ProjectionKind.delegate ||
        ProjectionKind.duration ||
        ProjectionKind.enum_ ||
        ProjectionKind.genericEnum ||
        ProjectionKind.genericObject ||
        ProjectionKind.guid ||
        ProjectionKind.map ||
        ProjectionKind.mapView ||
        ProjectionKind.object ||
        ProjectionKind.reference ||
        ProjectionKind.string ||
        ProjectionKind.struct ||
        ProjectionKind.uri ||
        ProjectionKind.vector ||
        ProjectionKind.vectorView =>
          DefaultGetterProjection(method, vtableOffset),
        ProjectionKind.dartPrimitiveList ||
        ProjectionKind.dateTimeList ||
        ProjectionKind.durationList ||
        ProjectionKind.enumList ||
        ProjectionKind.guidList ||
        ProjectionKind.objectList ||
        ProjectionKind.stringList ||
        ProjectionKind.structList ||
        ProjectionKind.uriList =>
          DefaultListGetterProjection(method, vtableOffset),
        _ => throw WinRTGenException(
            'Unsupported projection kind: $projectionKind'),
      };
    } catch (_) {
      print("Failed to project getter '$method' from '${method.parent}'.");
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
