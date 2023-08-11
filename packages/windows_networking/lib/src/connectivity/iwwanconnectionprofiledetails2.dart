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

import 'wwannetworkipkind.dart';

/// @nodoc
const IID_IWwanConnectionProfileDetails2 =
    '{7a754ede-a1ed-48b2-8e92-b460033d52e2}';

class IWwanConnectionProfileDetails2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWwanConnectionProfileDetails2.fromPtr(super.ptr);

  factory IWwanConnectionProfileDetails2.from(IInspectable interface) =>
      interface.cast(IWwanConnectionProfileDetails2.fromPtr,
          IID_IWwanConnectionProfileDetails2);

  WwanNetworkIPKind get ipKind {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
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

      return WwanNetworkIPKind.from(value.value);
    } finally {
      free(value);
    }
  }

  List<Guid>? get purposeGuids {
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

    return IVectorView<Guid>.fromPtr(value,
            iterableIid: '{f4ca3045-5dd7-54be-982e-d88d8ca0876e}')
        .toList();
  }
}
