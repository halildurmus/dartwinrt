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

import 'ibuffer.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'ioutputstream.dart';

/// @nodoc
const IID_IRandomAccessStream = '{905a0fe1-bc53-11df-8c49-001e4fc686da}';

/// Supports random access of data in input and output streams.
class IRandomAccessStream extends IInspectable
    implements IClosable, IInputStream, IOutputStream {
  // vtable begins at 6, is 9 entries long.
  IRandomAccessStream.fromPtr(super.ptr);

  factory IRandomAccessStream.from(IInspectable interface) =>
      interface.cast(IRandomAccessStream.fromPtr, IID_IRandomAccessStream);

  int get size {
    final value = calloc<Uint64>();

    try {
      final hr = vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set size(int value) {
    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint64 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IInputStream? getInputStreamAt(int position) {
    final stream = calloc<COMObject>();

    final hr = vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint64 position,
                        Pointer<COMObject> stream)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int position,
                Pointer<COMObject> stream)>()(lpVtbl, position, stream);

    if (FAILED(hr)) {
      free(stream);
      throwWindowsException(hr);
    }

    if (stream.isNull) {
      free(stream);
      return null;
    }

    return IInputStream.fromPtr(stream);
  }

  IOutputStream? getOutputStreamAt(int position) {
    final stream = calloc<COMObject>();

    final hr = vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint64 position,
                        Pointer<COMObject> stream)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int position,
                Pointer<COMObject> stream)>()(lpVtbl, position, stream);

    if (FAILED(hr)) {
      free(stream);
      throwWindowsException(hr);
    }

    if (stream.isNull) {
      free(stream);
      return null;
    }

    return IOutputStream.fromPtr(stream);
  }

  int get position {
    final value = calloc<Uint64>();

    try {
      final hr = vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint64> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  void seek(int position) {
    final hr =
        vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint64 position)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int position)>()(
            lpVtbl, position);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IRandomAccessStream? cloneStream() {
    final stream = calloc<COMObject>();

    final hr = vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> stream)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> stream)>()(lpVtbl, stream);

    if (FAILED(hr)) {
      free(stream);
      throwWindowsException(hr);
    }

    if (stream.isNull) {
      free(stream);
      return null;
    }

    return IRandomAccessStream.fromPtr(stream);
  }

  bool get canRead {
    final value = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get canWrite {
    final value = calloc<Bool>();

    try {
      final hr = vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iInputStream = IInputStream.from(this);

  @override
  Pointer<COMObject> readAsync(
          IBuffer? buffer, int count, InputStreamOptions options) =>
      _iInputStream.readAsync(buffer, count, options);

  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();
}
