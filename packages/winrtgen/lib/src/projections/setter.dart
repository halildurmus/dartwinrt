// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import 'method.dart';
import 'parameter.dart';
import 'property.dart';
import 'types/types.dart';

abstract class SetterProjection extends PropertyProjection {
  SetterProjection(super.method, super.vtableOffset);

  /// [ParameterProjection] for the parameter of the method.
  ParameterProjection get param => parameters.first;

  /// Returns the appropriate setter projection for the [method] based on the
  /// parameter type.
  factory SetterProjection.create(Method method, int vtableOffset) {
    final projectionType = method.parameters.first.projectionType;
    switch (projectionType) {
      case ProjectionType.dartPrimitive:
        return DefaultSetterProjection(method, vtableOffset);
      case ProjectionType.dateTime:
        return DateTimeSetterProjection(method, vtableOffset);
      case ProjectionType.delegate:
        return DelegateSetterProjection(method, vtableOffset);
      case ProjectionType.duration:
        return DurationSetterProjection(method, vtableOffset);
      case ProjectionType.enum_:
        return EnumSetterProjection(method, vtableOffset);
      case ProjectionType.guid:
        return GuidSetterProjection(method, vtableOffset);
      case ProjectionType.object:
        return ObjectSetterProjection(method, vtableOffset);
      case ProjectionType.reference:
        return ReferenceSetterProjection(method, vtableOffset);
      case ProjectionType.string:
        return StringSetterProjection(method, vtableOffset);
      case ProjectionType.struct:
        return StructSetterProjection(method, vtableOffset);
      case ProjectionType.uri:
        return UriSetterProjection(method, vtableOffset);
      default:
        throw UnsupportedError('Unsupported projection type: $projectionType');
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
  ///
  /// Throws an [Exception] if [methodName] is invalid or no [SetterProjection]
  /// matching [methodName] is found.
  factory SetterProjection.fromTypeAndMethodName(
      String fullyQualifiedType, String methodName) {
    final setPropertyPattern = RegExp(r'^put(_{1,2})(\w+)$');
    if (!setPropertyPattern.hasMatch(methodName)) {
      throw ArgumentError.value(
          methodName, 'methodName', 'Method name must start with `put_`.');
    }

    return MethodProjection.fromTypeAndMethodName(
        fullyQualifiedType, methodName) as SetterProjection;
  }

  // MethodProjection overrides

  @override
  String get shortForm => '$camelCasedName = value';
}
