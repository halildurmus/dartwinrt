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
import 'remoteautomationwindow.dart';

/// @nodoc
const IID_IRemoteAutomationClientSession =
    '{5c8a091d-94cc-5b33-afdb-678cded2bd54}';

class IRemoteAutomationClientSession extends IInspectable {
  IRemoteAutomationClientSession.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IRemoteAutomationClientSessionVtbl>().ref;

  final _IRemoteAutomationClientSessionVtbl _vtable;

  factory IRemoteAutomationClientSession.from(IInspectable interface) =>
      interface.cast(IRemoteAutomationClientSession.fromPtr,
          IID_IRemoteAutomationClientSession);

  void start() {
    final hr =
        _vtable.Start.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void stop() {
    final hr =
        _vtable.Stop.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<RemoteAutomationWindow?> createWindowAsync(int remoteWindowId,
      int remoteProcessId, Object? parentAutomationElement) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateWindowAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int remoteWindowId,
                int remoteProcessId,
                VTablePointer parentAutomationElement,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        remoteWindowId,
        remoteProcessId,
        parentAutomationElement?.boxValue().lpVtbl ?? nullptr,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<RemoteAutomationWindow?>.fromPtr(
        operation,
        tResultObjectCreator: RemoteAutomationWindow.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Guid get sessionId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_SessionId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  int add_ConnectionRequested(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_ConnectionRequested.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_ConnectionRequested(int token) {
    final hr = _vtable.remove_ConnectionRequested
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Disconnected(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Disconnected.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Disconnected(int token) {
    final hr = _vtable.remove_Disconnected
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IRemoteAutomationClientSessionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Start;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Stop;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint64 remoteWindowId,
              Uint32 remoteProcessId,
              VTablePointer parentAutomationElement,
              Pointer<COMObject> operation)>> CreateWindowAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_SessionId;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_ConnectionRequested;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_ConnectionRequested;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Disconnected;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Disconnected;
}
