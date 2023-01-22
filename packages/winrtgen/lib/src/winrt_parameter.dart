// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:win32gen/win32gen.dart';
import 'package:winmd/winmd.dart';

import 'declarations/class_or_interface.dart';
import 'declarations/datetime.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/guid.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'utils.dart';

/// A WinRT parameter.
///
/// Parameters are a tuple of a type and a name. WinRT parameters are
/// specialized in that they have logic to translate primitive WinRT types to
/// their Dart equivalents (e.g. a WinRT `TimeSpan` can be represented by a Dart
/// [Duration]).
class WinRTParameterProjection extends ParameterProjection {
  const WinRTParameterProjection(this.method, super.name, super.type);

  final Method method;

  // ParameterProjection override

  @override
  String get paramProjection => '$paramType $identifier';

  String get paramType {
    final originalParamType = safeTypenameForString(type.methodParamType);
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

  // Matcher properties

  bool get isClassOrInterface => ['Pointer<COMObject>'].contains(type.dartType);

  bool get isDateTime =>
      type.typeIdentifier.name == 'Windows.Foundation.DateTime';

  bool get isDuration =>
      type.typeIdentifier.name == 'Windows.Foundation.TimeSpan';

  bool get isEnum => type.isWinRTEnum;

  bool get isGuid => type.dartType == 'GUID';

  bool get isObject => type.isObject;

  bool get isReference =>
      type.typeIdentifier.type?.name.endsWith('IReference`1') ?? false;

  bool get isString => type.isString;

  bool get isUri => type.typeIdentifier.name == 'Windows.Foundation.Uri';

  /// Returns the appropriate projection for the parameter.
  WinRTParameterProjection? get parameterProjection {
    if (isClassOrInterface) {
      if (isReference) {
        return WinRTReferenceParameterProjection(method, name, type);
      }

      if (isUri) return WinRTUriParameterProjection(method, name, type);

      return WinRTClassOrInterfaceParameterProjection(method, name, type);
    }

    if (isDateTime) return WinRTDateTimeParameterProjection(method, name, type);
    if (isDuration) return WinRTDurationParameterProjection(method, name, type);
    if (isEnum) return WinRTEnumParameterProjection(method, name, type);
    if (isGuid) return WinRTGuidParameterProjection(method, name, type);
    if (isString) return WinRTStringParameterProjection(method, name, type);

    return null;
  }

  /// Code to be inserted prior to the function call to set up the variable
  /// conversion.
  ///
  /// Any preamble that allocates memory should have a matching postamble that
  /// frees the memory.
  String get preamble => parameterProjection?.preamble ?? '';

  /// Code to be inserted prior to the function call to tear down allocated
  /// memory.
  String get postamble => parameterProjection?.postamble ?? '';

  /// The name of the converted variable that should be passed inside the method
  /// call (e.g. `today` -> `todayDateTime`)
  String get localIdentifier =>
      parameterProjection?.localIdentifier ?? identifier;
}
