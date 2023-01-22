// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'declarations/class_or_interface.dart';
import 'declarations/datetime.dart';
import 'declarations/default.dart';
import 'declarations/duration.dart';
import 'declarations/enum.dart';
import 'declarations/guid.dart';
import 'declarations/map.dart';
import 'declarations/object.dart';
import 'declarations/reference.dart';
import 'declarations/string.dart';
import 'declarations/uri.dart';
import 'declarations/vector.dart';
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
  String toString() {
    try {
      if (!isObjectReturn && isClassOrInterfaceReturn) {
        if (isMapReturn) return declarationFor(WinRTMapGetterProjection.new);

        if (isMapViewReturn) {
          return declarationFor(WinRTMapViewGetterProjection.new);
        }

        if (isReferenceReturn) {
          return declarationFor(WinRTReferenceGetterProjection.new);
        }

        if (isUriReturn) return declarationFor(WinRTUriGetterProjection.new);

        if (isVectorReturn) {
          return declarationFor(WinRTVectorGetterProjection.new);
        }

        if (isVectorViewReturn) {
          return declarationFor(WinRTVectorViewGetterProjection.new);
        }

        return declarationFor(WinRTClassOrInterfaceGetterProjection.new);
      }

      if (isDateTimeReturn) {
        return declarationFor(WinRTDateTimeGetterProjection.new);
      }

      if (isDurationReturn) {
        return declarationFor(WinRTDurationGetterProjection.new);
      }

      if (isEnumReturn) return declarationFor(WinRTEnumGetterProjection.new);
      if (isGuidReturn) return declarationFor(WinRTGuidGetterProjection.new);

      if (isObjectReturn) {
        return declarationFor(WinRTObjectGetterProjection.new);
      }

      if (isStringReturn) {
        return declarationFor(WinRTStringGetterProjection.new);
      }

      return declarationFor(WinRTDefaultGetterProjection.new);
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project get property: ${method.name}');
      return '';
    }
  }
}
