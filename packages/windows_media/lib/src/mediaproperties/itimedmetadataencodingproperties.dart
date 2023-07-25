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

import 'timedmetadataencodingproperties.dart';

/// @nodoc
const IID_ITimedMetadataEncodingProperties =
    '{51cd30d3-d690-4cfa-97f4-4a398e9db420}';

class ITimedMetadataEncodingProperties extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  ITimedMetadataEncodingProperties.fromPtr(super.ptr);

  factory ITimedMetadataEncodingProperties.from(IInspectable interface) =>
      ITimedMetadataEncodingProperties.fromPtr(
          interface.toInterface(IID_ITimedMetadataEncodingProperties));

  void setFormatUserData(List<int> value) {
    final valueArray = value.toArray<Uint8>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                            Pointer<Uint8> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint8> value)>()(
        ptr.ref.lpVtbl, value.length, valueArray);

    free(valueArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<int> getFormatUserData() {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Uint8>>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Pointer<Uint32> valueSize,
                              Pointer<Pointer<Uint8>> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
                      Pointer<Pointer<Uint8>> value)>()(
          ptr.ref.lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value.toList(length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  TimedMetadataEncodingProperties? copy() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(result);
  }
}
