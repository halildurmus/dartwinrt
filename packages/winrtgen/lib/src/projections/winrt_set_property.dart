// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/winrt_parameter_type.dart';
import 'type.dart';
import 'types/types.dart';
import 'winrt_property.dart';

abstract class WinRTSetPropertyProjection extends WinRTPropertyProjection {
  WinRTSetPropertyProjection(super.method, super.vtableOffset);

  /// Returns the appropriate setter projection for the [method] based on the
  /// parameter type.
  factory WinRTSetPropertyProjection.create(Method method, int vtableOffset) {
    final typeProjection =
        TypeProjection(method.parameters.first.typeIdentifier);
    final parameterType = WinRTParameterType.from(typeProjection);

    switch (parameterType) {
      case WinRTParameterType.class_:
        return WinRTClassSetterProjection(method, vtableOffset);
      case WinRTParameterType.interface:
        return WinRTInterfaceSetterProjection(method, vtableOffset);
      case WinRTParameterType.dateTime:
        return WinRTDateTimeSetterProjection(method, vtableOffset);
      case WinRTParameterType.delegate:
        return WinRTDelegateSetterProjection(method, vtableOffset);
      case WinRTParameterType.duration:
        return WinRTDurationSetterProjection(method, vtableOffset);
      case WinRTParameterType.enum_:
        return WinRTEnumSetterProjection(method, vtableOffset);
      case WinRTParameterType.guid:
        return WinRTGuidSetterProjection(method, vtableOffset);
      case WinRTParameterType.object:
        return WinRTObjectSetterProjection(method, vtableOffset);
      case WinRTParameterType.reference:
        return WinRTReferenceSetterProjection(method, vtableOffset);
      case WinRTParameterType.string:
        return WinRTStringSetterProjection(method, vtableOffset);
      case WinRTParameterType.struct:
        return WinRTStructSetterProjection(method, vtableOffset);
      case WinRTParameterType.uri:
        return WinRTUriSetterProjection(method, vtableOffset);
      case WinRTParameterType.bool:
      case WinRTParameterType.double:
      case WinRTParameterType.int:
      case WinRTParameterType.pointer:
      case WinRTParameterType.simpleArray:
        return WinRTDefaultSetterProjection(method, vtableOffset);
    }
  }

  // WinRTPropertyProjection overrides

  @override
  String get nativeParams => 'Pointer, ${parameters.first.type.nativeType}';

  @override
  String get dartParams => 'Pointer, ${parameters.first.type.dartType}';

  // MethodProjection override

  @override
  String get shortForm => '$exposedMethodName = value';

  @override
  String ffiCall({String params = '', bool freeRetValOnFailure = false}) => '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, $params);

    if (FAILED(hr)) throw WindowsException(hr);
''';
}
