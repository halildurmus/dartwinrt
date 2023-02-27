// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IConnectionProfileFilter2 = '{cd068ee1-c3fc-4fad-9ddc-593faa4b7885}';

/// {@category interface}
class IConnectionProfileFilter2 extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IConnectionProfileFilter2.fromRawPointer(super.ptr);

  factory IConnectionProfileFilter2.from(IInspectable interface) =>
      IConnectionProfileFilter2.fromRawPointer(
          interface.toInterface(IID_IConnectionProfileFilter2));

  set isRoaming(bool? value) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, LPVTBL value)>()(
        ptr.ref.lpVtbl, value?.toReference().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool? get isRoaming {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<bool?>.fromRawPointer(retValuePtr,
        referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}');
    final value = reference.value;
    reference.release();

    return value;
  }

  set isOverDataLimit(bool? value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, LPVTBL value)>()(
        ptr.ref.lpVtbl, value?.toReference().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool? get isOverDataLimit {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<bool?>.fromRawPointer(retValuePtr,
        referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}');
    final value = reference.value;
    reference.release();

    return value;
  }

  set isBackgroundDataUsageRestricted(bool? value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, LPVTBL value)>()(
        ptr.ref.lpVtbl, value?.toReference().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool? get isBackgroundDataUsageRestricted {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<bool?>.fromRawPointer(retValuePtr,
        referenceIid: '{3c00fd60-2950-5939-a21a-2d12c5a01b8a}');
    final value = reference.value;
    reference.release();

    return value;
  }

  IBuffer? get rawData {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IBuffer.fromRawPointer(retValuePtr);
  }
}
