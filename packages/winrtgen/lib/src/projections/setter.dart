// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/models.dart';
import 'property.dart';
import 'type.dart';
import 'types/types.dart';

abstract class SetterProjection extends PropertyProjection {
  SetterProjection(super.method, super.vtableOffset);

  /// Returns the appropriate setter projection for the [method] based on the
  /// parameter type.
  factory SetterProjection.create(Method method, int vtableOffset) {
    final projectedType =
        TypeProjection(method.parameters.first.typeIdentifier).projectionType;

    switch (projectedType) {
      case ProjectionType.class_:
        return ClassSetterProjection(method, vtableOffset);
      case ProjectionType.interface:
        return InterfaceSetterProjection(method, vtableOffset);
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
      case ProjectionType.dartPrimitive:
      case ProjectionType.pointer:
      case ProjectionType.simpleArray:
        return DefaultSetterProjection(method, vtableOffset);
      default:
        throw UnsupportedError('Unsupported setter type: $projectedType');
    }
  }

  // MethodProjection overrides

  @override
  String get shortForm => '$camelCasedName = value';
}
