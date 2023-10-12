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

/// @nodoc
const IID_IKnownUserPropertiesStatics2 =
    '{5b450782-f620-577e-b1b3-dd56644d79b1}';

class IKnownUserPropertiesStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IKnownUserPropertiesStatics2.fromPtr(super.ptr);

  factory IKnownUserPropertiesStatics2.from(IInspectable interface) =>
      interface.cast(IKnownUserPropertiesStatics2.fromPtr,
          IID_IKnownUserPropertiesStatics2);

  String get ageEnforcementRegion {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}
