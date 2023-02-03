// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/models.dart';
import 'property.dart';
import 'type.dart';
import 'types/types.dart';

abstract class GetterProjection extends PropertyProjection {
  GetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate getter projection for the [method] based on the
  /// return type.
  factory GetterProjection.create(Method method, int vtableOffset) {
    final projectedType =
        TypeProjection(method.returnType.typeIdentifier).projectionType;

    switch (projectedType) {
      case ProjectionType.class_:
        return ClassGetterProjection(method, vtableOffset);
      case ProjectionType.interface:
        return InterfaceGetterProjection(method, vtableOffset);
      case ProjectionType.dateTime:
        return DateTimeGetterProjection(method, vtableOffset);
      case ProjectionType.delegate:
        return DelegateGetterProjection(method, vtableOffset);
      case ProjectionType.duration:
        return DurationGetterProjection(method, vtableOffset);
      case ProjectionType.enum_:
        return EnumGetterProjection(method, vtableOffset);
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
      case ProjectionType.dartPrimitive:
        return DefaultGetterProjection(method, vtableOffset);
      default:
        throw UnsupportedError('Unsupported getter type: $projectedType');
    }
  }

  // PropertyProjection overrides

  @override
  String get shortForm => camelCasedName;
}
