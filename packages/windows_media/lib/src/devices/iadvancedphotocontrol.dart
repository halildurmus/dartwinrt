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

import 'advancedphotocapturesettings.dart';
import 'advancedphotomode.dart';

/// @nodoc
const IID_IAdvancedPhotoControl = '{c5b15486-9001-4682-9309-68eae0080eec}';

class IAdvancedPhotoControl extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IAdvancedPhotoControl.fromPtr(super.ptr);

  factory IAdvancedPhotoControl.from(IInspectable interface) =>
      IAdvancedPhotoControl.fromPtr(
          interface.toInterface(IID_IAdvancedPhotoControl));

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<AdvancedPhotoMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<AdvancedPhotoMode>.fromPtr(value,
            iterableIid: '{7d090784-70a9-570c-be82-0d0890318975}',
            enumCreator: AdvancedPhotoMode.from)
        .toList();
  }

  AdvancedPhotoMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AdvancedPhotoMode.from(value.value);
    } finally {
      free(value);
    }
  }

  void configure(AdvancedPhotoCaptureSettings? settings) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer settings)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer settings)>()(
        ptr.ref.lpVtbl, settings.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
