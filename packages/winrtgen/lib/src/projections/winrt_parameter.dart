// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/winrt_parameter_type.dart';
import '../utils.dart';
import 'type.dart';
import 'types/types.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
abstract class WinRTParameterProjection {
  WinRTParameterProjection(this.parameter)
      : method = parameter.parent,
        name = parameter.name,
        type = TypeProjection(parameter.typeIdentifier, isParameter: true);

  /// The retrieved Windows metadata for the parameter.
  final Parameter parameter;

  /// The method that this parameter is a part of.
  final Method method;

  /// The name of the parameter.
  final String name;

  /// The type of the parameter.
  final TypeProjection type;

  /// Returns the appropriate projection for the parameter.
  factory WinRTParameterProjection.create(Parameter parameter) {
    final typeProjection = TypeProjection(parameter.typeIdentifier);
    final parameterType = WinRTParameterType.from(typeProjection);
    if (parameterType == WinRTParameterType.uri &&
        methodBelongsToUriRuntimeClass(parameter.parent)) {
      return WinRTInterfaceParameterProjection(parameter);
    }

    switch (parameterType) {
      case WinRTParameterType.class_:
        return WinRTClassParameterProjection(parameter);
      case WinRTParameterType.interface:
        return WinRTInterfaceParameterProjection(parameter);
      case WinRTParameterType.dateTime:
        return WinRTDateTimeParameterProjection(parameter);
      case WinRTParameterType.duration:
        return WinRTDurationParameterProjection(parameter);
      case WinRTParameterType.enum_:
        return WinRTEnumParameterProjection(parameter);
      case WinRTParameterType.guid:
        return WinRTGuidParameterProjection(parameter);
      case WinRTParameterType.object:
        return WinRTObjectParameterProjection(parameter);
      case WinRTParameterType.reference:
        return WinRTReferenceParameterProjection(parameter);
      case WinRTParameterType.string:
        return WinRTStringParameterProjection(parameter);
      case WinRTParameterType.uri:
        return WinRTUriParameterProjection(parameter);
      case WinRTParameterType.bool:
      case WinRTParameterType.delegate:
      case WinRTParameterType.double:
      case WinRTParameterType.int:
      case WinRTParameterType.pointer:
      case WinRTParameterType.simpleArray:
      case WinRTParameterType.struct:
        return WinRTDefaultParameterProjection(parameter);
    }
  }

  String get ffiProjection => '${type.nativeType} $identifier';

  String get dartProjection => '${type.dartType} $identifier';

  String get paramType {
    final exposedType = type.exposedType;
    if (!exposedType.endsWith('?')) return exposedType;

    // Parameters of factory interface methods (constructors) can't be nullable.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return stripQuestionMarkSuffix(exposedType);
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return stripQuestionMarkSuffix(exposedType);
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return stripQuestionMarkSuffix(exposedType);
    }

    return exposedType;
  }

  String get paramProjection => '$paramType $identifier';

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
  String toString() => '$name (${type.nativeType})';
}
