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

import 'isospeedpreset.dart';

/// @nodoc
const IID_IIsoSpeedControl = '{27b6c322-25ad-4f1b-aaab-524ab376ca33}';

class IIsoSpeedControl extends IInspectable {
  IIsoSpeedControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IIsoSpeedControlVtbl>().ref;

  final _IIsoSpeedControlVtbl _vtable;

  factory IIsoSpeedControl.from(IInspectable interface) =>
      interface.cast(IIsoSpeedControl.fromPtr, IID_IIsoSpeedControl);

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

  @Deprecated(
      "SupportedPresets may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  List<IsoSpeedPreset>? get supportedPresets {
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

    return IVectorView<IsoSpeedPreset>.fromPtr(value,
            iterableIid: '{94839abe-9712-545a-a94d-a567a3e8dfb7}',
            tEnumCreator: IsoSpeedPreset.from)
        .toList();
  }

  @Deprecated(
      "Preset may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  IsoSpeedPreset get preset {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Preset.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return IsoSpeedPreset.from(value.value);
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "SetPresetAsync may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  Future<void> setPresetAsync(IsoSpeedPreset preset) {
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
}

final class _IIsoSpeedControlVtbl extends Struct {
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
}
