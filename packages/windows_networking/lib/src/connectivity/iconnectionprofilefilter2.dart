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
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IConnectionProfileFilter2 = '{cd068ee1-c3fc-4fad-9ddc-593faa4b7885}';

class IConnectionProfileFilter2 extends IInspectable {
  IConnectionProfileFilter2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfileFilter2Vtbl>().ref;

  final _IConnectionProfileFilter2Vtbl _vtable;

  factory IConnectionProfileFilter2.from(IInspectable interface) => interface
      .cast(IConnectionProfileFilter2.fromPtr, IID_IConnectionProfileFilter2);

  set isRoaming(bool? value) {
    final hr = _vtable.put_IsRoaming.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isRoaming {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsRoaming.asFunction<
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

    return IReference<bool?>.fromPtr(value,
            referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}')
        .value;
  }

  set isOverDataLimit(bool? value) {
    final hr = _vtable.put_IsOverDataLimit.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isOverDataLimit {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsOverDataLimit.asFunction<
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

    return IReference<bool?>.fromPtr(value,
            referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}')
        .value;
  }

  set isBackgroundDataUsageRestricted(bool? value) {
    final hr = _vtable.put_IsBackgroundDataUsageRestricted.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isBackgroundDataUsageRestricted {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsBackgroundDataUsageRestricted.asFunction<
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

    return IReference<bool?>.fromPtr(value,
            referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}')
        .value;
  }

  IBuffer? get rawData {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RawData.asFunction<
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

    return IBuffer.fromPtr(value);
  }
}

final class _IConnectionProfileFilter2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_IsRoaming;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsRoaming;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_IsOverDataLimit;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsOverDataLimit;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_IsBackgroundDataUsageRestricted;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsBackgroundDataUsageRestricted;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RawData;
}
