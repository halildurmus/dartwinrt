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
const IID_IStorageLibraryChangeReader2 =
    '{abf4868b-fbcc-4a4f-999e-e7ab7c646dbe}';

class IStorageLibraryChangeReader2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageLibraryChangeReader2.fromPtr(super.ptr);

  factory IStorageLibraryChangeReader2.from(IInspectable interface) =>
      IStorageLibraryChangeReader2.fromPtr(
          interface.toInterface(IID_IStorageLibraryChangeReader2));

  int getLastChangeId() {
    final result = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
