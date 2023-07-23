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
const IID_IRemoteAutomationServerStatics =
    '{e6e8945e-0c11-5028-9ae3-c2771288b6b7}';

class IRemoteAutomationServerStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IRemoteAutomationServerStatics.fromPtr(super.ptr);

  factory IRemoteAutomationServerStatics.from(IInspectable interface) =>
      IRemoteAutomationServerStatics.fromPtr(
          interface.toInterface(IID_IRemoteAutomationServerStatics));

  void reportSession(Guid sessionId) {
    final sessionIdNativeStructPtr = sessionId.toNativeGUID();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, GUID sessionId)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, GUID sessionId)>()(
            ptr.ref.lpVtbl, sessionIdNativeStructPtr.ref);

    free(sessionIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
