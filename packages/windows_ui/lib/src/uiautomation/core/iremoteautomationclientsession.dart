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
import 'remoteautomationwindow.dart';

/// @nodoc
const IID_IRemoteAutomationClientSession =
    '{5c8a091d-94cc-5b33-afdb-678cded2bd54}';

class IRemoteAutomationClientSession extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  IRemoteAutomationClientSession.fromPtr(super.ptr);

  factory IRemoteAutomationClientSession.from(IInspectable interface) =>
      IRemoteAutomationClientSession.fromPtr(
          interface.toInterface(IID_IRemoteAutomationClientSession));

  void start() {
    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void stop() {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Future<RemoteAutomationWindow?> createWindowAsync(int remoteWindowId,
      int remoteProcessId, Object? parentAutomationElement) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint64 remoteWindowId,
                            Uint32 remoteProcessId,
                            VTablePointer parentAutomationElement,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int remoteWindowId,
                    int remoteProcessId,
                    VTablePointer parentAutomationElement,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl,
        remoteWindowId,
        remoteProcessId,
        parentAutomationElement?.intoBox().ptr.ref.lpVtbl ?? nullptr,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<RemoteAutomationWindow?>.fromPtr(
        operation,
        creator: RemoteAutomationWindow.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Guid get sessionId {
    final value = calloc<GUID>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<GUID> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<GUID> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  int add_ConnectionRequested(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer handler, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer handler,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throw WindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_ConnectionRequested(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_Disconnected(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer handler, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer handler,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throw WindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Disconnected(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
