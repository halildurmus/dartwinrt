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

import 'networkoperatortetheringclient.dart';

/// @nodoc
const IID_INetworkOperatorTetheringClientManager =
    '{91b14016-8dca-4225-bbed-eef8b8d718d7}';

class INetworkOperatorTetheringClientManager extends IInspectable {
  INetworkOperatorTetheringClientManager.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringClientManagerVtbl>()
            .ref;

  final _INetworkOperatorTetheringClientManagerVtbl _vtable;

  factory INetworkOperatorTetheringClientManager.from(IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringClientManager.fromPtr,
          IID_INetworkOperatorTetheringClientManager);

  List<NetworkOperatorTetheringClient?> getTetheringClients() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetTetheringClients.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<NetworkOperatorTetheringClient?>.fromPtr(value,
            iterableIid: '{4762ecb3-af48-5b63-89b7-78a42056549f}',
            tObjectCreator: NetworkOperatorTetheringClient.fromPtr)
        .toList();
  }
}

final class _INetworkOperatorTetheringClientManagerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetTetheringClients;
}
