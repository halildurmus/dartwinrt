// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/winrt_parameter_type.dart';
import '../utils.dart';
import 'parameter.dart';
import 'type.dart';
import 'types/types.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
abstract class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(super.method, super.name, super.type);

  /// Returns the appropriate projection for the parameter.
  factory WinRTParameterProjection.create(
      Method method, String name, TypeProjection type) {
    final parameterType = WinRTParameterType.from(type);
    if (parameterType == WinRTParameterType.uri &&
        methodBelongsToUriRuntimeClass(method)) {
      return WinRTInterfaceParameterProjection(method, name, type);
    }

    switch (parameterType) {
      case WinRTParameterType.class_:
        return WinRTClassParameterProjection(method, name, type);
      case WinRTParameterType.interface:
        return WinRTInterfaceParameterProjection(method, name, type);
      case WinRTParameterType.dateTime:
        return WinRTDateTimeParameterProjection(method, name, type);
      case WinRTParameterType.duration:
        return WinRTDurationParameterProjection(method, name, type);
      case WinRTParameterType.enum_:
        return WinRTEnumParameterProjection(method, name, type);
      case WinRTParameterType.guid:
        return WinRTGuidParameterProjection(method, name, type);
      case WinRTParameterType.object:
        return WinRTObjectParameterProjection(method, name, type);
      case WinRTParameterType.reference:
        return WinRTReferenceParameterProjection(method, name, type);
      case WinRTParameterType.string:
        return WinRTStringParameterProjection(method, name, type);
      case WinRTParameterType.uri:
        return WinRTUriParameterProjection(method, name, type);
      case WinRTParameterType.bool:
      case WinRTParameterType.delegate:
      case WinRTParameterType.double:
      case WinRTParameterType.int:
      case WinRTParameterType.pointer:
      case WinRTParameterType.simpleArray:
      case WinRTParameterType.struct:
        return WinRTDefaultParameterProjection(method, name, type);
    }
  }

  String get paramType {
    final originalParamType = type.methodParamType;
    if (originalParamType == 'GUID') return 'Guid';
    if (!originalParamType.endsWith('?')) return originalParamType;

    // Parameters of factory interface methods (constructors) can't be nullable.
    final factoryInterfacePattern = RegExp(r'^I\w+Factory\d{0,2}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return stripQuestionMarkSuffix(originalParamType);
    }

    return originalParamType;
  }

  // ParameterProjection override

  @override
  String get paramProjection => '$paramType $identifier';
}
