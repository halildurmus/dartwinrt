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

import 'remoteautomationclientsession.dart';

/// @nodoc
const IID_IRemoteAutomationClientSessionFactory =
    '{f250263d-6057-5373-a5a5-ed7265fe0376}';

class IRemoteAutomationClientSessionFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IRemoteAutomationClientSessionFactory.fromPtr(super.ptr);

  factory IRemoteAutomationClientSessionFactory.from(IInspectable interface) =>
      IRemoteAutomationClientSessionFactory.fromPtr(
          interface.toInterface(IID_IRemoteAutomationClientSessionFactory));

  RemoteAutomationClientSession createInstance(String name) {
    final value = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, nameHString, value);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    return RemoteAutomationClientSession.fromPtr(value);
  }

  RemoteAutomationClientSession createInstance2(String name, Guid sessionId) {
    final value = calloc<COMObject>();
    final nameHString = name.toHString();
    final sessionIdNativeStructPtr = sessionId.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            GUID sessionId, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name, GUID sessionId,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, nameHString, sessionIdNativeStructPtr.ref, value);

    WindowsDeleteString(nameHString);
    free(sessionIdNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    return RemoteAutomationClientSession.fromPtr(value);
  }
}
