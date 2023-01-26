// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'declarations/declarations.dart';
import 'winrt_property.dart';

class WinRTGetPropertyProjection extends WinRTPropertyProjection {
  WinRTGetPropertyProjection(super.method, super.vtableOffset);

  // WinRTPropertyProjection overrides

  @override
  String get dartParams => nativeParams;

  @override
  String get nativeParams => isClassOrInterfaceReturn || isObjectReturn
      ? 'Pointer, Pointer<COMObject>'
      : 'Pointer, Pointer<${returnType.nativeType}>';

  @override
  String ffiCall({String params = '', bool freeRetValOnFailure = false}) {
    return [
      '''
    final hr = ptr.ref.vtable
      .elementAt($vtableOffset)
      .cast<Pointer<NativeFunction<$nativePrototype>>>()
      .value
      .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);
''',
      if (freeRetValOnFailure)
        'if (FAILED(hr)) { free(retValuePtr); throw WindowsException(hr); }'
      else
        'if (FAILED(hr)) throw WindowsException(hr);'
    ].join('\n');
  }

  @override
  String get shortForm => exposedMethodName;

  @override
  WinRTGetPropertyProjection get projection {
    if (isDateTimeReturn) return WinRTDateTimeGetterProjection(this);
    if (isDurationReturn) return WinRTDurationGetterProjection(this);
    if (isEnumReturn) return WinRTEnumGetterProjection(this);
    if (isGuidReturn) return WinRTGuidGetterProjection(this);
    if (isMapReturn) return WinRTMapGetterProjection(this);
    if (isMapViewReturn) return WinRTMapViewGetterProjection(this);
    if (isObjectReturn) return WinRTObjectGetterProjection(this);
    if (isReferenceReturn) return WinRTReferenceGetterProjection(this);
    if (isStringReturn) return WinRTStringGetterProjection(this);
    if (isUriReturn) return WinRTUriGetterProjection(this);
    if (isVectorReturn) return WinRTVectorGetterProjection(this);
    if (isVectorViewReturn) return WinRTVectorViewGetterProjection(this);
    if (isClassOrInterfaceReturn) {
      return WinRTClassOrInterfaceGetterProjection(this);
    }

    return WinRTDefaultGetterProjection(this);
  }
}
