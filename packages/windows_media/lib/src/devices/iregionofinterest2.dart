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

import 'regionofinteresttype.dart';

/// @nodoc
const IID_IRegionOfInterest2 = '{19fe2a91-73aa-4d51-8a9d-56ccf7db7f54}';

class IRegionOfInterest2 extends IInspectable {
  IRegionOfInterest2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IRegionOfInterest2Vtbl>().ref;

  final _IRegionOfInterest2Vtbl _vtable;

  factory IRegionOfInterest2.from(IInspectable interface) =>
      interface.cast(IRegionOfInterest2.fromPtr, IID_IRegionOfInterest2);

  RegionOfInterestType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return RegionOfInterestType.from(value.value);
    } finally {
      free(value);
    }
  }

  set type(RegionOfInterestType value) {
    final hr = _vtable.put_Type
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get boundsNormalized {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_BoundsNormalized.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set boundsNormalized(bool value) {
    final hr = _vtable.put_BoundsNormalized
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get weight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Weight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set weight(int value) {
    final hr = _vtable.put_Weight
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IRegionOfInterest2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Type;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_BoundsNormalized;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_BoundsNormalized;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Weight;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Weight;
}
