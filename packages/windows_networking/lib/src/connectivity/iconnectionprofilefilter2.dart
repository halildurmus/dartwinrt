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
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IConnectionProfileFilter2 = '{cd068ee1-c3fc-4fad-9ddc-593faa4b7885}';

class IConnectionProfileFilter2 extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IConnectionProfileFilter2.fromPtr(super.ptr);

  factory IConnectionProfileFilter2.from(IInspectable interface) =>
      IConnectionProfileFilter2.fromPtr(
          interface.toInterface(IID_IConnectionProfileFilter2));

  set isRoaming(bool? value) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isRoaming {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isOverDataLimit {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool? get isBackgroundDataUsageRestricted {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
