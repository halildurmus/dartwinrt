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

import 'regionofinterest.dart';

/// @nodoc
const IID_IRegionsOfInterestControl = '{c323f527-ab0b-4558-8b5b-df5693db0378}';

class IRegionsOfInterestControl extends IInspectable {
  IRegionsOfInterestControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IRegionsOfInterestControlVtbl>().ref;

  final _IRegionsOfInterestControlVtbl _vtable;

  factory IRegionsOfInterestControl.from(IInspectable interface) => interface
      .cast(IRegionsOfInterestControl.fromPtr, IID_IRegionsOfInterestControl);

  int get maxRegions {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MaxRegions.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<void> setRegionsAsync(IIterable<RegionOfInterest?>? regions) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetRegionsAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer regions,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, regions.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> setRegionsWithLockAsync(
      IIterable<RegionOfInterest?>? regions, bool lockValues) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetRegionsWithLockAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer regions,
                bool lockValues, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, regions.lpVtbl, lockValues, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> clearRegionsAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.ClearRegionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  bool get autoFocusSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoFocusSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get autoWhiteBalanceSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoWhiteBalanceSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get autoExposureSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoExposureSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IRegionsOfInterestControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MaxRegions;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer regions,
              Pointer<COMObject> asyncInfo)>> SetRegionsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer regions,
              Bool lockValues,
              Pointer<COMObject> asyncInfo)>> SetRegionsWithLockAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      ClearRegionsAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoFocusSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoWhiteBalanceSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoExposureSupported;
}
