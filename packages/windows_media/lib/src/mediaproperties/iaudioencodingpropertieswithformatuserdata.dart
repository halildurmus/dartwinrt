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
const IID_IAudioEncodingPropertiesWithFormatUserData =
    '{98f10d79-13ea-49ff-be70-2673db69702c}';

class IAudioEncodingPropertiesWithFormatUserData extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IAudioEncodingPropertiesWithFormatUserData.fromPtr(super.ptr);

  factory IAudioEncodingPropertiesWithFormatUserData.from(
          IInspectable interface) =>
      IAudioEncodingPropertiesWithFormatUserData.fromPtr(interface
          .toInterface(IID_IAudioEncodingPropertiesWithFormatUserData));

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
}
