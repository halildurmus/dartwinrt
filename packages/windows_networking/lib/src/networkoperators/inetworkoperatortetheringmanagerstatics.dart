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

import 'networkoperatortetheringmanager.dart';
import 'tetheringcapability.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManagerStatics =
    '{3ebcbacc-f8c3-405c-9964-70a1eeabe194}';

class INetworkOperatorTetheringManagerStatics extends IInspectable {
  INetworkOperatorTetheringManagerStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringManagerStaticsVtbl>()
            .ref;

  final _INetworkOperatorTetheringManagerStaticsVtbl _vtable;

  factory INetworkOperatorTetheringManagerStatics.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringManagerStatics.fromPtr,
          IID_INetworkOperatorTetheringManagerStatics);

  TetheringCapability getTetheringCapability(String networkAccountId) {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetTetheringCapability.asFunction<
              int Function(VTablePointer lpVtbl, int networkAccountId,
                  Pointer<Int32> value)>()(
          lpVtbl, networkAccountId.toHString(), value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringCapability.from(value.value);
    } finally {
      free(value);
    }
  }

  NetworkOperatorTetheringManager? createFromNetworkAccountId(
      String networkAccountId) {
    final ppManager = calloc<COMObject>();

    final hr = _vtable.CreateFromNetworkAccountId.asFunction<
            int Function(VTablePointer lpVtbl, int networkAccountId,
                Pointer<COMObject> ppManager)>()(
        lpVtbl, networkAccountId.toHString(), ppManager);

    if (FAILED(hr)) {
      free(ppManager);
      throwWindowsException(hr);
    }

    if (ppManager.isNull) {
      free(ppManager);
      return null;
    }

    return NetworkOperatorTetheringManager.fromPtr(ppManager);
  }
}

final class _INetworkOperatorTetheringManagerStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr networkAccountId,
              Pointer<Int32> value)>> GetTetheringCapability;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr networkAccountId,
              Pointer<COMObject> ppManager)>> CreateFromNetworkAccountId;
}
