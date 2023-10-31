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

import 'byteorder.dart';
import 'datareaderloadoperation.dart';
import 'ibuffer.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'unicodeencoding.dart';

/// @nodoc
const IID_IDataReader = '{e2b50029-b4c1-4314-a4b8-fb813a2f275e}';

class IDataReader extends IInspectable {
  IDataReader.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataReaderVtbl>().ref;

  final _IDataReaderVtbl _vtable;

  factory IDataReader.from(IInspectable interface) =>
      interface.cast(IDataReader.fromPtr, IID_IDataReader);

  int get unconsumedBufferLength {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_UnconsumedBufferLength.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  UnicodeEncoding get unicodeEncoding {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_UnicodeEncoding.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UnicodeEncoding.from(value.value);
    } finally {
      free(value);
    }
  }

  set unicodeEncoding(UnicodeEncoding value) {
    final hr = _vtable.put_UnicodeEncoding
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  ByteOrder get byteOrder {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ByteOrder.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ByteOrder.from(value.value);
    } finally {
      free(value);
    }
  }

  set byteOrder(ByteOrder value) {
    final hr = _vtable.put_ByteOrder
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  InputStreamOptions get inputStreamOptions {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_InputStreamOptions.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return InputStreamOptions.from(value.value);
    } finally {
      free(value);
    }
  }

  set inputStreamOptions(InputStreamOptions value) {
    final hr = _vtable.put_InputStreamOptions
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int readByte() {
    final value = calloc<Uint8>();

    try {
      final hr = _vtable.ReadByte.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint8> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<int> readBytes(int valueSize) {
    final value = calloc<Uint8>(valueSize);

    try {
      final hr = _vtable.ReadBytes.asFunction<
          int Function(VTablePointer lpVtbl, int valueSize,
              Pointer<Uint8> value)>()(lpVtbl, valueSize, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toList(length: valueSize);
    } finally {
      free(value);
    }
  }

  IBuffer? readBuffer(int length) {
    final buffer = calloc<COMObject>();

    final hr = _vtable.ReadBuffer.asFunction<
        int Function(VTablePointer lpVtbl, int length,
            Pointer<COMObject> buffer)>()(lpVtbl, length, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  bool readBoolean() {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.ReadBoolean.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Guid readGuid() {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.ReadGuid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  int readInt16() {
    final value = calloc<Int16>();

    try {
      final hr = _vtable.ReadInt16.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readInt32() {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.ReadInt32.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readInt64() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.ReadInt64.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt16() {
    final value = calloc<Uint16>();

    try {
      final hr = _vtable.ReadUInt16.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint16> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt32() {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.ReadUInt32.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int readUInt64() {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.ReadUInt64.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double readSingle() {
    final value = calloc<Float>();

    try {
      final hr = _vtable.ReadSingle.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double readDouble() {
    final value = calloc<Double>();

    try {
      final hr = _vtable.ReadDouble.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String readString(int codeUnitCount) {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.ReadString.asFunction<
          int Function(VTablePointer lpVtbl, int codeUnitCount,
              Pointer<IntPtr> value)>()(lpVtbl, codeUnitCount, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DateTime readDateTime() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.ReadDateTime.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  Duration readTimeSpan() {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.ReadTimeSpan.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDuration();
    } finally {
      free(value);
    }
  }

  Future<int> loadAsync(int count) {
    final operation = calloc<COMObject>();

    final hr = _vtable.LoadAsync.asFunction<
        int Function(VTablePointer lpVtbl, int count,
            Pointer<COMObject> operation)>()(lpVtbl, count, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, tResultIntType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  IBuffer? detachBuffer() {
    final buffer = calloc<COMObject>();

    final hr = _vtable.DetachBuffer.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> buffer)>()(lpVtbl, buffer);

    if (FAILED(hr)) {
      free(buffer);
      throwWindowsException(hr);
    }

    if (buffer.isNull) {
      free(buffer);
      return null;
    }

    return IBuffer.fromPtr(buffer);
  }

  IInputStream? detachStream() {
    final stream = calloc<COMObject>();

    final hr = _vtable.DetachStream.asFunction<
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

    return IInputStream.fromPtr(stream);
  }
}

final class _IDataReaderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_UnconsumedBufferLength;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_UnicodeEncoding;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_UnicodeEncoding;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ByteOrder;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_ByteOrder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_InputStreamOptions;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_InputStreamOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint8> value)>>
      ReadByte;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
              Pointer<Uint8> value)>> ReadBytes;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 length,
              Pointer<COMObject> buffer)>> ReadBuffer;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      ReadBoolean;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      ReadGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int16> value)>>
      ReadInt16;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      ReadInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      ReadInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint16> value)>>
      ReadUInt16;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      ReadUInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      ReadUInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      ReadSingle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      ReadDouble;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 codeUnitCount,
              Pointer<IntPtr> value)>> ReadString;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      ReadDateTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      ReadTimeSpan;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 count,
              Pointer<COMObject> operation)>> LoadAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> buffer)>> DetachBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> stream)>> DetachStream;
}
