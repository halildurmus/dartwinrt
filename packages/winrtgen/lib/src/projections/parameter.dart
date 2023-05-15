// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../exception/exception.dart';
import '../models/models.dart';
import '../utilities/utilities.dart';
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
    return switch (projectionType) {
      ProjectionType.dartPrimitive ||
      ProjectionType.pointer =>
        DefaultParameterProjection(param),
      ProjectionType.dartPrimitiveList => DefaultListParameterProjection(param),
      ProjectionType.dateTime => DateTimeParameterProjection(param),
      ProjectionType.dateTimeList => DateTimeListParameterProjection(param),
      ProjectionType.delegate => DelegateParameterProjection(param),
      ProjectionType.duration => DurationParameterProjection(param),
      ProjectionType.durationList => DurationListParameterProjection(param),
      ProjectionType.enum_ => EnumParameterProjection(param),
      ProjectionType.genericEnum => GenericEnumParameterProjection(param),
      ProjectionType.genericEnumList =>
        GenericEnumListParameterProjection(param),
      ProjectionType.genericObject => GenericObjectParameterProjection(param),
      ProjectionType.genericObjectList =>
        GenericObjectListParameterProjection(param),
      ProjectionType.guid => GuidParameterProjection(param),
      ProjectionType.guidList => GuidListParameterProjection(param),
      ProjectionType.object ||
      ProjectionType.vectorView =>
        ObjectParameterProjection(param),
      ProjectionType.objectList => ObjectListParameterProjection(param),
      ProjectionType.reference => ReferenceParameterProjection(param),
      ProjectionType.string => StringParameterProjection(param),
      ProjectionType.stringList => StringListParameterProjection(param),
      ProjectionType.struct => StructParameterProjection(param),
      ProjectionType.structList => StructListParameterProjection(param),
      ProjectionType.uri => UriParameterProjection(param),
      ProjectionType.uriList => UriListParameterProjection(param),
      _ =>
        throw WinRTGenException('Unsupported projection type: $projectionType'),
    };
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
