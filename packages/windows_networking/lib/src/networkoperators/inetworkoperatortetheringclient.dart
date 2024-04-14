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

import '../hostname.dart';

/// @nodoc
const IID_INetworkOperatorTetheringClient =
    '{709d254c-595f-4847-bb30-646935542918}';

class INetworkOperatorTetheringClient extends IInspectable {
  INetworkOperatorTetheringClient.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_INetworkOperatorTetheringClientVtbl>().ref;

  final _INetworkOperatorTetheringClientVtbl _vtable;

  factory INetworkOperatorTetheringClient.from(IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringClient.fromPtr,
          IID_INetworkOperatorTetheringClient);

  String get macAddress {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_MacAddress.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  List<HostName?>? get hostNames {
    final value = calloc<COMObject>();

    final hr = _vtable.get_HostNames.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<HostName?>.fromPtr(value,
            iterableIid: '{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}',
            tObjectCreator: HostName.fromPtr)
        .toList();
  }
}

final class _INetworkOperatorTetheringClientVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_MacAddress;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_HostNames;
}
