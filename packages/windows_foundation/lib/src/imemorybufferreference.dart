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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iclosable.dart';

/// @nodoc
const IID_IMemoryBufferReference = '{fbc4dd29-245b-11e4-af98-689423260cf8}';

/// Represents a reference to an IMemoryBuffer object.
class IMemoryBufferReference extends IInspectable implements IClosable {
  // vtable begins at 6, is 3 entries long.
  IMemoryBufferReference.fromPtr(super.ptr);

  factory IMemoryBufferReference.from(IInspectable interface) => interface.cast(
      IMemoryBufferReference.fromPtr, IID_IMemoryBufferReference);

  int get capacity {
    final value = calloc<Uint32>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_Closed(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr =
          vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer handler,
                                  Pointer<IntPtr> cookie)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer handler,
                          Pointer<IntPtr> cookie)>()(
              lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_Closed(int cookie) {
    final hr =
        vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr cookie)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
            lpVtbl, cookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
