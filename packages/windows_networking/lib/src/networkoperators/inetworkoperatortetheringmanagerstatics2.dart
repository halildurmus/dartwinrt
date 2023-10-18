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

import '../connectivity/connectionprofile.dart';
import 'networkoperatortetheringmanager.dart';
import 'tetheringcapability.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManagerStatics2 =
    '{5b235412-35f0-49e7-9b08-16d278fbaa42}';

class INetworkOperatorTetheringManagerStatics2 extends IInspectable {
  INetworkOperatorTetheringManagerStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringManagerStatics2Vtbl>()
            .ref;

  final _INetworkOperatorTetheringManagerStatics2Vtbl _vtable;

  factory INetworkOperatorTetheringManagerStatics2.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringManagerStatics2.fromPtr,
          IID_INetworkOperatorTetheringManagerStatics2);

  TetheringCapability getTetheringCapabilityFromConnectionProfile(
      ConnectionProfile? profile) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.GetTetheringCapabilityFromConnectionProfile.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer profile,
              Pointer<Int32> result)>()(lpVtbl, profile.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringCapability.from(result.value);
    } finally {
      free(result);
    }
  }

  NetworkOperatorTetheringManager? createFromConnectionProfile(
      ConnectionProfile? profile) {
    final ppManager = calloc<COMObject>();

    final hr = _vtable.CreateFromConnectionProfile.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer profile,
            Pointer<COMObject> ppManager)>()(lpVtbl, profile.lpVtbl, ppManager);

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

final class _INetworkOperatorTetheringManagerStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer profile,
                  Pointer<Int32> result)>>
      GetTetheringCapabilityFromConnectionProfile;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer profile,
              Pointer<COMObject> ppManager)>> CreateFromConnectionProfile;
}
