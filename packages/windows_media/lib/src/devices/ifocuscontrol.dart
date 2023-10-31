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

import 'focuspreset.dart';

/// @nodoc
const IID_IFocusControl = '{c0d889f6-5228-4453-b153-85606592b238}';

class IFocusControl extends IInspectable {
  IFocusControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFocusControlVtbl>().ref;

  final _IFocusControlVtbl _vtable;

  factory IFocusControl.from(IInspectable interface) =>
      interface.cast(IFocusControl.fromPtr, IID_IFocusControl);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<FocusPreset>? get supportedPresets {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedPresets.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<FocusPreset>.fromPtr(value,
            iterableIid: '{26ba711b-3a32-5216-bc34-61ecafbebdc1}',
            tEnumCreator: FocusPreset.from)
        .toList();
  }

  FocusPreset get preset {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Preset.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return FocusPreset.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<void> setPresetAsync(FocusPreset preset) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetPresetAsync.asFunction<
        int Function(VTablePointer lpVtbl, int preset,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, preset.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> setPresetWithCompletionOptionAsync(
      FocusPreset preset, bool completeBeforeFocus) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetPresetWithCompletionOptionAsync.asFunction<
            int Function(VTablePointer lpVtbl, int preset,
                bool completeBeforeFocus, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, preset.value, completeBeforeFocus, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  int get min {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Min.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get max {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Max.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get step {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Step.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get value {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<void> setValueAsync(int focus) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetValueAsync.asFunction<
        int Function(VTablePointer lpVtbl, int focus,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, focus, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> focusAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.FocusAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IFocusControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedPresets;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Preset;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 preset,
              Pointer<COMObject> asyncInfo)>> SetPresetAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 preset,
                  Bool completeBeforeFocus, Pointer<COMObject> asyncInfo)>>
      SetPresetWithCompletionOptionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Min;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Max;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Step;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Value;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 focus,
              Pointer<COMObject> asyncInfo)>> SetValueAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>> FocusAsync;
}
