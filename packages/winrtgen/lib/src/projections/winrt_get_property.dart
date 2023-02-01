// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../models/winrt_getter_return_type.dart';
import 'type.dart';
import 'types/types.dart';
import 'winrt_property.dart';

abstract class WinRTGetPropertyProjection extends WinRTPropertyProjection {
  WinRTGetPropertyProjection(super.method, super.vtableOffset);

  /// Returns the appropriate getter projection for the [method] based on the
  /// return type.
  factory WinRTGetPropertyProjection.create(Method method, int vtableOffset) {
    final typeProjection = TypeProjection(method.returnType.typeIdentifier);
    final getterReturnType = WinRTGetterReturnType.from(typeProjection);

    switch (getterReturnType) {
      case WinRTGetterReturnType.class_:
        return WinRTClassGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.interface:
        return WinRTInterfaceGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.dateTime:
        return WinRTDateTimeGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.delegate:
        return WinRTDelegateGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.duration:
        return WinRTDurationGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.enum_:
        return WinRTEnumGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.guid:
        return WinRTGuidGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.map:
        return WinRTMapGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.mapView:
        return WinRTMapViewGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.object:
        return WinRTObjectGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.reference:
        return WinRTReferenceGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.string:
        return WinRTStringGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.struct:
        return WinRTStructGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.uri:
        return WinRTUriGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.vector:
        return WinRTVectorGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.vectorView:
        return WinRTVectorViewGetterProjection(method, vtableOffset);
      case WinRTGetterReturnType.bool:
      case WinRTGetterReturnType.double:
      case WinRTGetterReturnType.int:
        return WinRTDefaultGetterProjection(method, vtableOffset);
    }
  }

  // WinRTPropertyProjection overrides

  @override
  String get shortForm => camelCasedName;
}
