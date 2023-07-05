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

import '../connectivity/connectionprofile.dart';
import 'networkoperatortetheringmanager.dart';
import 'tetheringcapability.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManagerStatics2 =
    '{5b235412-35f0-49e7-9b08-16d278fbaa42}';

class INetworkOperatorTetheringManagerStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  INetworkOperatorTetheringManagerStatics2.fromPtr(super.ptr);

  factory INetworkOperatorTetheringManagerStatics2.from(
          IInspectable interface) =>
      INetworkOperatorTetheringManagerStatics2.fromPtr(
          interface.toInterface(IID_INetworkOperatorTetheringManagerStatics2));

  TetheringCapability getTetheringCapabilityFromConnectionProfile(
      ConnectionProfile? profile) {
    final result = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer profile, Pointer<Int32> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer profile,
                      Pointer<Int32> result)>()(ptr.ref.lpVtbl,
          profile == null ? nullptr : profile.ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throw WindowsException(hr);

      return TetheringCapability.from(result.value);
    } finally {
      free(result);
    }
  }

  NetworkOperatorTetheringManager? createFromConnectionProfile(
      ConnectionProfile? profile) {
    final ppManager = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer profile,
                            Pointer<COMObject> ppManager)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer profile,
                    Pointer<COMObject> ppManager)>()(ptr.ref.lpVtbl,
        profile == null ? nullptr : profile.ptr.ref.lpVtbl, ppManager);

    if (FAILED(hr)) {
      free(ppManager);
      throw WindowsException(hr);
    }

    if (ppManager.isNull) {
      free(ppManager);
      return null;
    }

    return NetworkOperatorTetheringManager.fromPtr(ppManager);
  }
}
