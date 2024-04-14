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

import 'ibuffer.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'ioutputstream.dart';

/// @nodoc
const IID_IRandomAccessStream = '{905a0fe1-bc53-11df-8c49-001e4fc686da}';

/// Supports random access of data in input and output streams.
class IRandomAccessStream extends IInspectable
    implements IClosable, IInputStream, IOutputStream {
  IRandomAccessStream.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IRandomAccessStreamVtbl>().ref;

  final _IRandomAccessStreamVtbl _vtable;

  factory IRandomAccessStream.from(IInspectable interface) =>
      interface.cast(IRandomAccessStream.fromPtr, IID_IRandomAccessStream);

  int get size {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_Size.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set size(int value) {
    final hr = _vtable.put_Size
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IInputStream? getInputStreamAt(int position) {
    final stream = calloc<COMObject>();

    final hr = _vtable.GetInputStreamAt.asFunction<
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

    final hr = _vtable.GetOutputStreamAt.asFunction<
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
      final hr = _vtable.get_Position.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  void seek(int position) {
    final hr = _vtable.Seek.asFunction<
        int Function(VTablePointer lpVtbl, int position)>()(lpVtbl, position);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IRandomAccessStream? cloneStream() {
    final stream = calloc<COMObject>();

    final hr = _vtable.CloneStream.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> stream)>()(lpVtbl, stream);

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
      final hr = _vtable.get_CanRead.asFunction<
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
      final hr = _vtable.get_CanWrite.asFunction<
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

final class _IRandomAccessStreamVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_Size;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint64 value)>>
      put_Size;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 position,
              Pointer<COMObject> stream)>> GetInputStreamAt;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 position,
              Pointer<COMObject> stream)>> GetOutputStreamAt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_Position;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint64 position)>> Seek;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> stream)>> CloneStream;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CanRead;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CanWrite;
}
