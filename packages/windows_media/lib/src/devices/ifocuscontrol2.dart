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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'autofocusrange.dart';
import 'focusmode.dart';
import 'focussettings.dart';
import 'manualfocusdistance.dart';
import 'mediacapturefocusstate.dart';

/// @nodoc
const IID_IFocusControl2 = '{3f7cff48-c534-4e9e-94c3-52ef2afd5d07}';

class IFocusControl2 extends IInspectable {
  IFocusControl2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFocusControl2Vtbl>().ref;

  final _IFocusControl2Vtbl _vtable;

  factory IFocusControl2.from(IInspectable interface) =>
      interface.cast(IFocusControl2.fromPtr, IID_IFocusControl2);

  bool get focusChangedSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_FocusChangedSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get waitForFocusSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_WaitForFocusSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<FocusMode>? get supportedFocusModes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedFocusModes.asFunction<
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

    return IVectorView<FocusMode>.fromPtr(value,
            iterableIid: '{561bc21f-4ae2-580a-a216-0ad48f373a4c}',
            tEnumCreator: FocusMode.from)
        .toList();
  }

  List<ManualFocusDistance>? get supportedFocusDistances {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedFocusDistances.asFunction<
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

    return IVectorView<ManualFocusDistance>.fromPtr(value,
            iterableIid: '{cf8cbeb1-2a4c-522d-962f-84c31a598d68}',
            tEnumCreator: ManualFocusDistance.from)
        .toList();
  }

  List<AutoFocusRange>? get supportedFocusRanges {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedFocusRanges.asFunction<
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

    return IVectorView<AutoFocusRange>.fromPtr(value,
            iterableIid: '{751664c6-f8d6-50a3-ab80-137c6d908c55}',
            tEnumCreator: AutoFocusRange.from)
        .toList();
  }

  FocusMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Mode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return FocusMode.from(value.value);
    } finally {
      free(value);
    }
  }

  MediaCaptureFocusState get focusState {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FocusState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCaptureFocusState.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<void> unlockAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.UnlockAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> lockAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.LockAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  void configure(FocusSettings? settings) {
    final hr = _vtable.Configure.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer settings)>()(
        lpVtbl, settings.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFocusControl2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_FocusChangedSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_WaitForFocusSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedFocusModes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedFocusDistances;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedFocusRanges;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FocusState;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>> UnlockAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>> LockAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer settings)>>
      Configure;
}
