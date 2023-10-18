// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'automationannotationtyperegistration.dart';

/// @nodoc
const IID_ICoreAutomationRegistrarStatics =
    '{3e50129b-d6dc-5680-b580-ffff78300304}';

class ICoreAutomationRegistrarStatics extends IInspectable {
  ICoreAutomationRegistrarStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ICoreAutomationRegistrarStaticsVtbl>().ref;

  final _ICoreAutomationRegistrarStaticsVtbl _vtable;

  factory ICoreAutomationRegistrarStatics.from(IInspectable interface) =>
      interface.cast(ICoreAutomationRegistrarStatics.fromPtr,
          IID_ICoreAutomationRegistrarStatics);

  AutomationAnnotationTypeRegistration registerAnnotationType(Guid guid) {
    final result = calloc<NativeAutomationAnnotationTypeRegistration>();

    try {
      final guidNativeStructPtr = guid.toNativeGUID();

      final hr = _vtable.RegisterAnnotationType.asFunction<
          int Function(
              VTablePointer lpVtbl,
              GUID guid,
              Pointer<NativeAutomationAnnotationTypeRegistration>
                  result)>()(lpVtbl, guidNativeStructPtr.ref, result);

      free(guidNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDart();
    } finally {
      free(result);
    }
  }

  void unregisterAnnotationType(
      AutomationAnnotationTypeRegistration registration) {
    final registrationNativeStructPtr = registration.toNative();

    final hr = _vtable.UnregisterAnnotationType.asFunction<
            int Function(VTablePointer lpVtbl,
                NativeAutomationAnnotationTypeRegistration registration)>()(
        lpVtbl, registrationNativeStructPtr.ref);

    free(registrationNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ICoreAutomationRegistrarStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, GUID guid,
                  Pointer<NativeAutomationAnnotationTypeRegistration> result)>>
      RegisterAnnotationType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  NativeAutomationAnnotationTypeRegistration registration)>>
      UnregisterAnnotationType;
}
