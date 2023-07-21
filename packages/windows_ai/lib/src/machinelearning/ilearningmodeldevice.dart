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
import 'package:windows_graphics/windows_graphics.dart';

/// @nodoc
const IID_ILearningModelDevice = '{f5c2c8fe-3f56-4a8c-ac5f-fdb92d8b8252}';

class ILearningModelDevice extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ILearningModelDevice.fromPtr(super.ptr);

  factory ILearningModelDevice.from(IInspectable interface) =>
      ILearningModelDevice.fromPtr(
          interface.toInterface(IID_ILearningModelDevice));

  DisplayAdapterId get adapterId {
    final value = calloc<NativeDisplayAdapterId>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeDisplayAdapterId> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeDisplayAdapterId> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      value.free();
    }
  }

  IDirect3DDevice? get direct3D11Device {
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

    return IDirect3DDevice.fromPtr(value);
  }
}
