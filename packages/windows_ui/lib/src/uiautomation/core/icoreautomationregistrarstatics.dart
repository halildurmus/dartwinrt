// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'automationannotationtyperegistration.dart';

/// @nodoc
const IID_ICoreAutomationRegistrarStatics =
    '{3e50129b-d6dc-5680-b580-ffff78300304}';

/// {@category interface}
class ICoreAutomationRegistrarStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICoreAutomationRegistrarStatics.fromPtr(super.ptr);

  factory ICoreAutomationRegistrarStatics.from(IInspectable interface) =>
      ICoreAutomationRegistrarStatics.fromPtr(
          interface.toInterface(IID_ICoreAutomationRegistrarStatics));

  AutomationAnnotationTypeRegistration registerAnnotationType(Guid guid) {
    final retValuePtr = calloc<NativeAutomationAnnotationTypeRegistration>();

    try {
      final guidNativeGuidPtr = guid.toNativeGUID();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              GUID guid,
                              Pointer<NativeAutomationAnnotationTypeRegistration>
                                  retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      GUID guid,
                      Pointer<NativeAutomationAnnotationTypeRegistration>
                          retValuePtr)>()(
          ptr.ref.lpVtbl, guidNativeGuidPtr.ref, retValuePtr);

      free(guidNativeGuidPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }

  void unregisterAnnotationType(
      AutomationAnnotationTypeRegistration registration) {
    final registrationNativeStructPtr = registration.toNative();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationAnnotationTypeRegistration
                                registration)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl,
                    NativeAutomationAnnotationTypeRegistration registration)>()(
        ptr.ref.lpVtbl, registrationNativeStructPtr.ref);

    free(registrationNativeStructPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
