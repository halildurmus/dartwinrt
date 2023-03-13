// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'networkoperatortetheringclient.dart';

/// @nodoc
const IID_INetworkOperatorTetheringClientManager =
    '{91b14016-8dca-4225-bbed-eef8b8d718d7}';

/// {@category interface}
class INetworkOperatorTetheringClientManager extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  INetworkOperatorTetheringClientManager.fromPtr(super.ptr);

  factory INetworkOperatorTetheringClientManager.from(IInspectable interface) =>
      INetworkOperatorTetheringClientManager.fromPtr(
          interface.toInterface(IID_INetworkOperatorTetheringClientManager));

  List<NetworkOperatorTetheringClient> getTetheringClients() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<NetworkOperatorTetheringClient>.fromPtr(
        retValuePtr,
        iterableIid: '{4762ecb3-af48-5b63-89b7-78a42056549f}',
        creator: NetworkOperatorTetheringClient.fromPtr);
    return vectorView.toList();
  }
}
