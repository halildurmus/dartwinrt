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

import 'userwatcher.dart';
import 'userwatcherstatus.dart';

/// @nodoc
const IID_IUserWatcher = '{155eb23b-242a-45e0-a2e9-3171fc6a7fbb}';

class IUserWatcher extends IInspectable {
  IUserWatcher.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUserWatcherVtbl>().ref;

  final _IUserWatcherVtbl _vtable;

  factory IUserWatcher.from(IInspectable interface) =>
      interface.cast(IUserWatcher.fromPtr, IID_IUserWatcher);

  UserWatcherStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UserWatcherStatus.from(value.value);
    } finally {
      free(value);
    }
  }

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

  int add_Added(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Added.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Added(int token) {
    final hr = _vtable.remove_Added
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Removed(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Removed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Removed(int token) {
    final hr = _vtable.remove_Removed
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Updated(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Updated.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Updated(int token) {
    final hr = _vtable.remove_Updated
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_AuthenticationStatusChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_AuthenticationStatusChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_AuthenticationStatusChanged(int token) {
    final hr = _vtable.remove_AuthenticationStatusChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_AuthenticationStatusChanging(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_AuthenticationStatusChanging.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_AuthenticationStatusChanging(int token) {
    final hr = _vtable.remove_AuthenticationStatusChanging
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_EnumerationCompleted(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_EnumerationCompleted.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_EnumerationCompleted(int token) {
    final hr = _vtable.remove_EnumerationCompleted
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Stopped(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Stopped.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Stopped(int token) {
    final hr = _vtable.remove_Stopped
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IUserWatcherVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Start;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Stop;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Added;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Added;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Removed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Removed;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Updated;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Updated;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_AuthenticationStatusChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_AuthenticationStatusChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_AuthenticationStatusChanging;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_AuthenticationStatusChanging;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_EnumerationCompleted;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_EnumerationCompleted;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Stopped;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Stopped;
}
