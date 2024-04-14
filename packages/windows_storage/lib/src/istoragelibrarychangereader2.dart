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
const IID_IStorageLibraryChangeReader2 =
    '{abf4868b-fbcc-4a4f-999e-e7ab7c646dbe}';

class IStorageLibraryChangeReader2 extends IInspectable {
  IStorageLibraryChangeReader2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageLibraryChangeReader2Vtbl>().ref;

  final _IStorageLibraryChangeReader2Vtbl _vtable;

  factory IStorageLibraryChangeReader2.from(IInspectable interface) =>
      interface.cast(IStorageLibraryChangeReader2.fromPtr,
          IID_IStorageLibraryChangeReader2);

  int getLastChangeId() {
    final result = calloc<Uint64>();

    try {
      final hr = _vtable.GetLastChangeId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _IStorageLibraryChangeReader2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> result)>>
      GetLastChangeId;
}
