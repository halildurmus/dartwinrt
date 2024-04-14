// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import 'method.dart';
import 'property.dart';

base class GetterProjection extends PropertyProjection {
  GetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate getter projection for the [method] based on the
  /// parameter's [ProjectionKind].
  factory GetterProjection.create(Method method, int vtableOffset) {
    try {
      final projectionKind = method.projectionKind;
      return switch (projectionKind) {
        ProjectionKind.asyncAction ||
        ProjectionKind.asyncActionWithProgress ||
        ProjectionKind.asyncOperation ||
        ProjectionKind.asyncOperationWithProgress ||
        ProjectionKind.genericEnumArray ||
        ProjectionKind.genericObjectArray ||
        ProjectionKind.pointer ||
        ProjectionKind.record ||
        ProjectionKind.reference ||
        ProjectionKind.void_ =>
          throw UnsupportedError('Unsupported ProjectionKind: $projectionKind'),
        ProjectionKind.dartPrimitive ||
        _ =>
          GetterProjection(method, vtableOffset),
      };
    } catch (_) {
      print("Failed to project getter '$method' from '${method.parent}'.");
      rethrow;
    }
  }

  /// Attempts to create a [GetterProjection] from [type] and [methodName].
  ///
  /// ```dart
  /// final projection = GetterProjection.fromTypeAndMethodName(
  ///     'Windows.Globalization.Calendar', 'get_Era');
  /// ```
  ///
  /// It does this by calling `MethodProjection.fromTypeAndMethodName`
  /// constructor with given [type] and [methodName].
  factory GetterProjection.fromTypeAndMethodName(
      String type, String methodName) {
    if (!methodName.isGetProperty) {
      throw ArgumentError.value(methodName, 'methodName',
          'Method name must start with `get_` (e.g., `get_Data`).');
    }

    return MethodProjection.fromTypeAndMethodName(type, methodName)
        as GetterProjection;
  }

  // PropertyProjection overrides

  @override
  String get shortForm => camelCasedName;
}
