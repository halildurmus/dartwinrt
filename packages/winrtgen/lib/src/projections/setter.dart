// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import 'method.dart';
import 'parameter.dart';
import 'property.dart';

base class SetterProjection extends PropertyProjection {
  SetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate setter projection for the [method] based on the
  /// parameter's [ProjectionKind].
  factory SetterProjection.create(Method method, int vtableOffset) {
    try {
      final projectionKind = method.parameters.first.projectionKind;
      return switch (projectionKind) {
        ProjectionKind.dartPrimitive ||
        ProjectionKind.dateTime ||
        ProjectionKind.delegate ||
        ProjectionKind.duration ||
        ProjectionKind.enum_ ||
        ProjectionKind.ireference ||
        ProjectionKind.map ||
        ProjectionKind.mapView ||
        ProjectionKind.object ||
        ProjectionKind.string ||
        ProjectionKind.struct ||
        ProjectionKind.uri ||
        ProjectionKind.vector ||
        ProjectionKind.vectorView =>
          SetterProjection(method, vtableOffset),
        _ =>
          throw UnsupportedError('Unsupported ProjectionKind: $projectionKind'),
      };
    } catch (_) {
      print("Failed to project setter '$method' from '${method.parent}'.");
      rethrow;
    }
  }

  /// Attempts to create a [SetterProjection] from [type] and [methodName].
  ///
  /// ```dart
  /// final projection = SetterProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'put_Era');
  /// ```
  ///
  /// It does this by calling `MethodProjection.fromTypeAndMethodName`
  /// constructor with given [type] and [methodName].
  factory SetterProjection.fromTypeAndMethodName(
      String type, String methodName) {
    if (!methodName.isSetProperty) {
      throw ArgumentError.value(methodName, 'methodName',
          'Method name must start with `put_` (e.g., `put_Data`).');
    }

    return MethodProjection.fromTypeAndMethodName(type, methodName)
        as SetterProjection;
  }

  /// [ParameterProjection] for the parameter of the setter.
  ParameterProjection get parameter => parameters.first;

  // MethodProjection overrides

  @override
  String get returnType => '';

  @override
  String get shortForm => '$camelCasedName = ${parameter.identifier}';
}
