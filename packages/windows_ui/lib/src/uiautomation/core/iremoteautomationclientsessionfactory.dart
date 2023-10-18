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

import 'remoteautomationclientsession.dart';

/// @nodoc
const IID_IRemoteAutomationClientSessionFactory =
    '{f250263d-6057-5373-a5a5-ed7265fe0376}';

class IRemoteAutomationClientSessionFactory extends IInspectable {
  IRemoteAutomationClientSessionFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IRemoteAutomationClientSessionFactoryVtbl>()
            .ref;

  final _IRemoteAutomationClientSessionFactoryVtbl _vtable;

  factory IRemoteAutomationClientSessionFactory.from(IInspectable interface) =>
      interface.cast(IRemoteAutomationClientSessionFactory.fromPtr,
          IID_IRemoteAutomationClientSessionFactory);

  RemoteAutomationClientSession createInstance(String name) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateInstance.asFunction<
        int Function(VTablePointer lpVtbl, int name,
            Pointer<COMObject> value)>()(lpVtbl, name.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return RemoteAutomationClientSession.fromPtr(value);
  }

  RemoteAutomationClientSession createInstance2(String name, Guid sessionId) {
    final value = calloc<COMObject>();
    final sessionIdNativeStructPtr = sessionId.toNativeGUID();

    final hr = _vtable.CreateInstance2.asFunction<
            int Function(VTablePointer lpVtbl, int name, GUID sessionId,
                Pointer<COMObject> value)>()(
        lpVtbl, name.toHString(), sessionIdNativeStructPtr.ref, value);

    free(sessionIdNativeStructPtr);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return RemoteAutomationClientSession.fromPtr(value);
  }
}

final class _IRemoteAutomationClientSessionFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr name, Pointer<COMObject> value)>>
      CreateInstance;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name, GUID sessionId,
              Pointer<COMObject> value)>> CreateInstance2;
}
