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

import 'enums.g.dart';
import 'istorageitemextraproperties.dart';

/// @nodoc
const IID_IVideoProperties = '{719ae507-68de-4db8-97de-49998c059f2f}';

/// {@category interface}
class IVideoProperties extends IInspectable
    implements IStorageItemExtraProperties {
  // vtable begins at 6, is 21 entries long.
  IVideoProperties.fromRawPointer(super.ptr);

  factory IVideoProperties.from(IInspectable interface) =>
      IVideoProperties.fromRawPointer(
          interface.toInterface(IID_IVideoProperties));

  int get rating {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set rating(int value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  IVector<String> get keywords {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  int get width {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int get height {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  Duration get duration {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint64>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint64>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }

  double? get latitude {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<double?>.fromRawPointer(retValuePtr,
        referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}');
    final value = reference.value;
    reference.release();

    return value;
  }

  double? get longitude {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<double?>.fromRawPointer(retValuePtr,
        referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}');
    final value = reference.value;
    reference.release();

    return value;
  }

  String get title {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set title(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
          .value
          .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  String get subtitle {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set subtitle(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
          .value
          .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  IVector<String> get producers {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  String get publisher {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set publisher(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(20)
          .cast<
              Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
          .value
          .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  IVector<String> get writers {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(21)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  int get year {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set year(int value) {
    final hr = ptr.ref.vtable
        .elementAt(23)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get bitrate {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  IVector<String> get directors {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  VideoOrientation get orientation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return VideoOrientation.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  // IStorageItemExtraProperties methods
  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}
