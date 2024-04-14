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
import 'package:windows_ui/windows_ui.dart';

/// @nodoc
const IID_ILauncherUIOptions = '{1b25da6e-8aa6-41e9-8251-4165f5985f49}';

class ILauncherUIOptions extends IInspectable {
  ILauncherUIOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILauncherUIOptionsVtbl>().ref;

  final _ILauncherUIOptionsVtbl _vtable;

  factory ILauncherUIOptions.from(IInspectable interface) =>
      interface.cast(ILauncherUIOptions.fromPtr, IID_ILauncherUIOptions);

  Point? get invocationPoint {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InvocationPoint.asFunction<
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

    return IReference<Point?>.fromPtr(value,
            referenceIid: '{84f14c22-a00a-5272-8d3d-82112e66df00}')
        .value;
  }

  set invocationPoint(Point? value) {
    final hr = _vtable.put_InvocationPoint.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Rect? get selectionRect {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SelectionRect.asFunction<
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

    return IReference<Rect?>.fromPtr(value,
            referenceIid: '{80423f11-054f-5eac-afd3-63b6ce15e77b}')
        .value;
  }

  set selectionRect(Rect? value) {
    final hr = _vtable.put_SelectionRect.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Placement get preferredPlacement {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PreferredPlacement.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return Placement.from(value.value);
    } finally {
      free(value);
    }
  }

  set preferredPlacement(Placement value) {
    final hr = _vtable.put_PreferredPlacement
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILauncherUIOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InvocationPoint;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_InvocationPoint;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SelectionRect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_SelectionRect;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PreferredPlacement;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_PreferredPlacement;
}
