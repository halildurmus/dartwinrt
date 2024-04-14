// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
const IID_IPixelDataProvider = '{dd831f25-185c-4595-9fb9-ccbe6ec18a6f}';

class IPixelDataProvider extends IInspectable {
  IPixelDataProvider.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPixelDataProviderVtbl>().ref;

  final _IPixelDataProviderVtbl _vtable;

  factory IPixelDataProvider.from(IInspectable interface) =>
      interface.cast(IPixelDataProvider.fromPtr, IID_IPixelDataProvider);

  List<int> detachPixelData() {
    final pixelDataSize = calloc<Uint32>();
    final pixelData = calloc<Pointer<Uint8>>();

    try {
      final hr = _vtable.DetachPixelData.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint32> pixelDataSize,
                  Pointer<Pointer<Uint8>> pixelData)>()(
          lpVtbl, pixelDataSize, pixelData);

      if (FAILED(hr)) throwWindowsException(hr);

      return pixelData.value.toList(length: pixelDataSize.value);
    } finally {
      free(pixelDataSize);
      free(pixelData.value);
      free(pixelData);
    }
  }
}

final class _IPixelDataProviderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> pixelDataSize,
              Pointer<Pointer<Uint8>> pixelData)>> DetachPixelData;
}
