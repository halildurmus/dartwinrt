// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
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
  factory ParameterProjection.create(Parameter param) {
    final projectionType = param.projectionType;
    switch (projectionType) {
      case ProjectionType.dartPrimitive:
      case ProjectionType.pointer:
        return DefaultParameterProjection(param);
      case ProjectionType.dartPrimitiveList:
        return DefaultListParameterProjection(param);
      case ProjectionType.dateTime:
        return DateTimeParameterProjection(param);
      case ProjectionType.dateTimeList:
        return DateTimeListParameterProjection(param);
      case ProjectionType.delegate:
        return DelegateParameterProjection(param);
      case ProjectionType.duration:
        return DurationParameterProjection(param);
      case ProjectionType.durationList:
        return DurationListParameterProjection(param);
      case ProjectionType.enum_:
        return EnumParameterProjection(param);
      case ProjectionType.genericEnum:
        return GenericEnumParameterProjection(param);
      case ProjectionType.genericEnumList:
        return GenericEnumListParameterProjection(param);
      case ProjectionType.genericObject:
        return GenericObjectParameterProjection(param);
      case ProjectionType.genericObjectList:
        return GenericObjectListParameterProjection(param);
      case ProjectionType.guid:
        return GuidParameterProjection(param);
      case ProjectionType.guidList:
        return GuidListParameterProjection(param);
      case ProjectionType.object:
        return ObjectParameterProjection(param);
      case ProjectionType.objectList:
        return ObjectListParameterProjection(param);
      case ProjectionType.reference:
        return ReferenceParameterProjection(param);
      case ProjectionType.string:
        return StringParameterProjection(param);
      case ProjectionType.stringList:
        return StringListParameterProjection(param);
      case ProjectionType.struct:
        return StructParameterProjection(param);
      case ProjectionType.structList:
        return StructListParameterProjection(param);
      case ProjectionType.uri:
        return UriParameterProjection(param);
      case ProjectionType.uriList:
        return UriListParameterProjection(param);
      default:
        throw UnsupportedError('Unsupported projection type: $projectionType');
    }
  }

  String get ffiProjection => '${typeProjection.nativeType} $identifier';

  String get dartProjection => '${typeProjection.dartType} $identifier';

  String get paramProjection => '$type $identifier';

  /// The type of the parameter (e.g. `String`).
  String get type => typeProjection.dartType;

  /// Whether the type of the parameter is nullable.
  bool get isNullable => type.endsWith('?');

  /// The name of the parameter that is safe to use as a Dart identifier.
  String get identifier => safeIdentifierForString(name.toCamelCase());

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble => '';

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble => '';

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier => identifier;

  @override
  String toString() => '$identifier (${typeProjection.nativeType})';
}
