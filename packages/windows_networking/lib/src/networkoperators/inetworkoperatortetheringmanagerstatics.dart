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

import 'networkoperatortetheringmanager.dart';
import 'tetheringcapability.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManagerStatics =
    '{3ebcbacc-f8c3-405c-9964-70a1eeabe194}';

/// {@category interface}
class INetworkOperatorTetheringManagerStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  INetworkOperatorTetheringManagerStatics.fromPtr(super.ptr);

  factory INetworkOperatorTetheringManagerStatics.from(
          IInspectable interface) =>
      INetworkOperatorTetheringManagerStatics.fromPtr(
          interface.toInterface(IID_INetworkOperatorTetheringManagerStatics));

  TetheringCapability getTetheringCapability(String networkAccountId) {
    final retValuePtr = calloc<Int32>();

    try {
      final networkAccountIdHString = networkAccountId.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              IntPtr networkAccountId,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int networkAccountId,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, networkAccountIdHString, retValuePtr);

      WindowsDeleteString(networkAccountIdHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return TetheringCapability.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  NetworkOperatorTetheringManager? createFromNetworkAccountId(
      String networkAccountId) {
    final retValuePtr = calloc<COMObject>();
    final networkAccountIdHString = networkAccountId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr networkAccountId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int networkAccountId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, networkAccountIdHString, retValuePtr);

    WindowsDeleteString(networkAccountIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return NetworkOperatorTetheringManager.fromPtr(retValuePtr);
  }
}
