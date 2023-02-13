// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/models.dart';
import '../utils.dart';
import 'type.dart';
import 'types/types.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
abstract class ParameterProjection {
  ParameterProjection(this.parameter)
      : method = parameter.parent,
        name = parameter.name,
        typeProjection =
            TypeProjection(parameter.typeIdentifier, isParameter: true);

  /// The retrieved Windows metadata for the parameter.
  final Parameter parameter;

  /// The method that this parameter is a part of.
  final Method method;

  /// The name of the parameter.
  final String name;

  /// The type projection of the parameter.
  final TypeProjection typeProjection;

  /// Returns the appropriate projection for the parameter.
  factory ParameterProjection.create(Parameter parameter) {
    final projectedType =
        TypeProjection(parameter.typeIdentifier).projectionType;
    if (projectedType == ProjectionType.uri &&
        methodBelongsToUriRuntimeClass(parameter.parent)) {
      return InterfaceParameterProjection(parameter);
    }

    switch (projectedType) {
      case ProjectionType.class_:
        return ClassParameterProjection(parameter);
      case ProjectionType.interface:
        return InterfaceParameterProjection(parameter);
      case ProjectionType.dateTime:
        return DateTimeParameterProjection(parameter);
      case ProjectionType.duration:
        return DurationParameterProjection(parameter);
      case ProjectionType.enum_:
        return EnumParameterProjection(parameter);
      case ProjectionType.guid:
        return GuidParameterProjection(parameter);
      case ProjectionType.object:
        return ObjectParameterProjection(parameter);
      case ProjectionType.reference:
        return ReferenceParameterProjection(parameter);
      case ProjectionType.string:
        return StringParameterProjection(parameter);
      case ProjectionType.struct:
        return StructParameterProjection(parameter);
      case ProjectionType.uri:
        return UriParameterProjection(parameter);
      case ProjectionType.dartPrimitive:
      case ProjectionType.delegate:
      case ProjectionType.pointer:
      case ProjectionType.simpleArray:
        return DefaultParameterProjection(parameter);
      default:
        throw UnsupportedError('Unsupported parameter type: $projectedType');
    }
  }

  String get ffiProjection => '${typeProjection.nativeType} $identifier';

  String get dartProjection => '${typeProjection.dartType} $identifier';

  String get paramProjection => '$type $identifier';

  /// The type of the parameter (e.g. `String`).
  String get type => typeProjection.dartType;

  /// The name of the parameter that is safe to use as a Dart identifier.
  String get identifier => safeIdentifierForString(name);

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble;

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble;

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier;

  @override
  String toString() => '$name (${typeProjection.nativeType})';
}
