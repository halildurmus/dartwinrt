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

import 'digitalwindowbounds.dart';
import 'digitalwindowcapability.dart';
import 'digitalwindowmode.dart';

/// @nodoc
const IID_IDigitalWindowControl = '{23b69eff-65d2-53ea-8780-de582b48b544}';

class IDigitalWindowControl extends IInspectable {
  IDigitalWindowControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDigitalWindowControlVtbl>().ref;

  final _IDigitalWindowControlVtbl _vtable;

  factory IDigitalWindowControl.from(IInspectable interface) =>
      interface.cast(IDigitalWindowControl.fromPtr, IID_IDigitalWindowControl);

  bool get isSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<DigitalWindowMode> get supportedModes {
    final valueSize = calloc<Uint32>();
    final value = calloc<Pointer<Int32>>();

    try {
      final hr = _vtable.get_SupportedModes.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int32>> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value
          .toEnumList(DigitalWindowMode.from, length: valueSize.value);
    } finally {
      free(valueSize);
      free(value);
    }
  }

  DigitalWindowMode get currentMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DigitalWindowMode.from(value.value);
    } finally {
      free(value);
    }
  }

  DigitalWindowBounds? getBounds() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetBounds.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return DigitalWindowBounds.fromPtr(result);
  }

  void configure(DigitalWindowMode digitalWindowMode) {
    final hr = _vtable.Configure.asFunction<
            int Function(VTablePointer lpVtbl, int digitalWindowMode)>()(
        lpVtbl, digitalWindowMode.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void configureWithBounds(DigitalWindowMode digitalWindowMode,
      DigitalWindowBounds? digitalWindowBounds) {
    final hr = _vtable.ConfigureWithBounds.asFunction<
            int Function(VTablePointer lpVtbl, int digitalWindowMode,
                VTablePointer digitalWindowBounds)>()(
        lpVtbl, digitalWindowMode.value, digitalWindowBounds.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<DigitalWindowCapability?>? get supportedCapabilities {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedCapabilities.asFunction<
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

    return IVectorView<DigitalWindowCapability?>.fromPtr(value,
            iterableIid: '{a4f28d49-fb50-5c0d-ba48-6695e4612500}',
            creator: DigitalWindowCapability.fromPtr)
        .toList();
  }

  DigitalWindowCapability? getCapabilityForSize(int width, int height) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetCapabilityForSize.asFunction<
        int Function(VTablePointer lpVtbl, int width, int height,
            Pointer<COMObject> result)>()(lpVtbl, width, height, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return DigitalWindowCapability.fromPtr(result);
  }
}

final class _IDigitalWindowControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> valueSize,
              Pointer<Pointer<Int32>> value)>> get_SupportedModes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_CurrentMode;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> GetBounds;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 digitalWindowMode)>>
      Configure;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 digitalWindowMode,
              VTablePointer digitalWindowBounds)>> ConfigureWithBounds;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedCapabilities;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 width, Int32 height,
              Pointer<COMObject> result)>> GetCapabilityForSize;
}
