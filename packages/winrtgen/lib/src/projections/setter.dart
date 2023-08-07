// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

  /// Attempts to create a [SetterProjection] from [fullyQualifiedType] and
  /// [methodName].
  ///
  /// ```dart
  /// final projection = SetterProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'put_Era');
  /// ```
  ///
  /// It does this by calling `MethodProjection.fromTypeAndMethodName`
  /// constructor with given [fullyQualifiedType] and [methodName].
  factory SetterProjection.fromTypeAndMethodName(
      String fullyQualifiedType, String methodName) {
    final setPropertyRegExp = RegExp(r'^put(_{1,2})(\w+)$');
    if (!setPropertyRegExp.hasMatch(methodName)) {
      throw ArgumentError.value(
          methodName, 'methodName', 'Method name must start with `put_`.');
    }

    return MethodProjection.fromTypeAndMethodName(
        fullyQualifiedType, methodName) as SetterProjection;
  }

  /// [ParameterProjection] for the parameter of the setter.
  ParameterProjection get parameter => parameters.first;

  // MethodProjection overrides

  @override
  String get returnType => '';

  @override
  String get shortForm => '$camelCasedName = ${parameter.identifier}';
}
