// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../models/models.dart';
import 'method.dart';
import 'property.dart';
import 'types/types.dart';

abstract class GetterProjection extends PropertyProjection {
  GetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate getter projection for the [method] based on the
  /// return type.
  factory GetterProjection.create(Method method, int vtableOffset) {
    final projectionType = method.projectionType;
    switch (projectionType) {
      case ProjectionType.dartPrimitive:
        return DefaultGetterProjection(method, vtableOffset);
      case ProjectionType.dateTime:
        return DateTimeGetterProjection(method, vtableOffset);
      case ProjectionType.delegate:
        return DelegateGetterProjection(method, vtableOffset);
      case ProjectionType.duration:
        return DurationGetterProjection(method, vtableOffset);
      case ProjectionType.enum_:
        return EnumGetterProjection(method, vtableOffset);
      case ProjectionType.genericEnum:
        return GenericEnumGetterProjection(method, vtableOffset);
      case ProjectionType.genericObject:
        return GenericObjectGetterProjection(method, vtableOffset);
      case ProjectionType.guid:
        return GuidGetterProjection(method, vtableOffset);
      case ProjectionType.map:
        return MapGetterProjection(method, vtableOffset);
      case ProjectionType.mapView:
        return MapViewGetterProjection(method, vtableOffset);
      case ProjectionType.object:
        return ObjectGetterProjection(method, vtableOffset);
      case ProjectionType.reference:
        return ReferenceGetterProjection(method, vtableOffset);
      case ProjectionType.string:
        return StringGetterProjection(method, vtableOffset);
      case ProjectionType.struct:
        return StructGetterProjection(method, vtableOffset);
      case ProjectionType.uri:
        return UriGetterProjection(method, vtableOffset);
      case ProjectionType.vector:
        return VectorGetterProjection(method, vtableOffset);
      case ProjectionType.vectorView:
        return VectorViewGetterProjection(method, vtableOffset);
      default:
        throw UnsupportedError('Unsupported projection type: $projectionType');
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
    final getPropertyPattern = RegExp(r'^get(_{1,2})(\w+)$');
    if (!getPropertyPattern.hasMatch(methodName)) {
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
