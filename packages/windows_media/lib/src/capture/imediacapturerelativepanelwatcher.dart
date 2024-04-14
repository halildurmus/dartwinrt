// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'mediacapturerelativepanelwatcher.dart';

/// @nodoc
const IID_IMediaCaptureRelativePanelWatcher =
    '{7d896566-04be-5b89-b30e-bd34a9f12db0}';

class IMediaCaptureRelativePanelWatcher extends IInspectable {
  IMediaCaptureRelativePanelWatcher.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IMediaCaptureRelativePanelWatcherVtbl>().ref;

  final _IMediaCaptureRelativePanelWatcherVtbl _vtable;

  factory IMediaCaptureRelativePanelWatcher.from(IInspectable interface) =>
      interface.cast(IMediaCaptureRelativePanelWatcher.fromPtr,
          IID_IMediaCaptureRelativePanelWatcher);

  Panel get relativePanel {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_RelativePanel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return Panel.from(value.value);
    } finally {
      free(value);
    }
  }

  int add_Changed(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Changed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Changed(int token) {
    final hr = _vtable.remove_Changed
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
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
}

final class _IMediaCaptureRelativePanelWatcherVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_RelativePanel;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Changed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Changed;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Start;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Stop;
}
