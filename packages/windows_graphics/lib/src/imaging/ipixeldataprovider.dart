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

/// @nodoc
const IID_IPixelDataProvider = '{dd831f25-185c-4595-9fb9-ccbe6ec18a6f}';

class IPixelDataProvider extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPixelDataProvider.fromPtr(super.ptr);

  factory IPixelDataProvider.from(IInspectable interface) =>
      IPixelDataProvider.fromPtr(interface.toInterface(IID_IPixelDataProvider));

  List<int> detachPixelData() {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<Uint8>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<Uint8>> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<Uint8>> retValuePtr)>()(
          ptr.ref.lpVtbl, pValueSize, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value.toList(length: pValueSize.value);
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
}
