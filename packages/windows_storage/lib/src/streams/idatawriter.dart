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
import 'datawriterstoreoperation.dart';
import 'ibuffer.dart';
import 'ioutputstream.dart';
import 'unicodeencoding.dart';

/// @nodoc
const IID_IDataWriter = '{64b89265-d341-4922-b38a-dd4af8808c4e}';

class IDataWriter extends IInspectable {
  IDataWriter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataWriterVtbl>().ref;

  final _IDataWriterVtbl _vtable;

  factory IDataWriter.from(IInspectable interface) =>
      interface.cast(IDataWriter.fromPtr, IID_IDataWriter);

  int get unstoredBufferLength {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_UnstoredBufferLength.asFunction<
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

  void writeByte(int value) {
    final hr = _vtable.WriteByte.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBytes(List<int> value) {
    final valueArray = value.toArray<Uint8>();

    final hr = _vtable.WriteBytes.asFunction<
        int Function(VTablePointer lpVtbl, int valueSize,
            Pointer<Uint8> value)>()(lpVtbl, value.length, valueArray);

    free(valueArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBuffer(IBuffer? buffer) {
    final hr = _vtable.WriteBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBufferRange(IBuffer? buffer, int start, int count) {
    final hr = _vtable.WriteBufferRange.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer buffer, int start,
            int count)>()(lpVtbl, buffer.lpVtbl, start, count);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBoolean(bool value) {
    final hr = _vtable.WriteBoolean.asFunction<
        int Function(VTablePointer lpVtbl, bool value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeGuid(Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = _vtable.WriteGuid.asFunction<
            int Function(VTablePointer lpVtbl, GUID value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt16(int value) {
    final hr = _vtable.WriteInt16.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt32(int value) {
    final hr = _vtable.WriteInt32.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt64(int value) {
    final hr = _vtable.WriteInt64.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt16(int value) {
    final hr = _vtable.WriteUInt16.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt32(int value) {
    final hr = _vtable.WriteUInt32.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt64(int value) {
    final hr = _vtable.WriteUInt64.asFunction<
        int Function(VTablePointer lpVtbl, int value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeSingle(double value) {
    final hr = _vtable.WriteSingle.asFunction<
        int Function(VTablePointer lpVtbl, double value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeDouble(double value) {
    final hr = _vtable.WriteDouble.asFunction<
        int Function(VTablePointer lpVtbl, double value)>()(lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeDateTime(DateTime value) {
    final hr = _vtable.WriteDateTime.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeTimeSpan(Duration value) {
    final hr = _vtable.WriteTimeSpan.asFunction<
            int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int writeString(String value) {
    final codeUnitCount = calloc<Uint32>();

    try {
      final hr = _vtable.WriteString.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> codeUnitCount)>()(
          lpVtbl, value.toHString(), codeUnitCount);

      if (FAILED(hr)) throwWindowsException(hr);

      return codeUnitCount.value;
    } finally {
      free(codeUnitCount);
    }
  }

  int measureString(String value) {
    final codeUnitCount = calloc<Uint32>();

    try {
      final hr = _vtable.MeasureString.asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> codeUnitCount)>()(
          lpVtbl, value.toHString(), codeUnitCount);

      if (FAILED(hr)) throwWindowsException(hr);

      return codeUnitCount.value;
    } finally {
      free(codeUnitCount);
    }
  }

  Future<int> storeAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.StoreAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, intType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> flushAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.FlushAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
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

  IOutputStream? detachStream() {
    final outputStream = calloc<COMObject>();

    final hr = _vtable.DetachStream.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> outputStream)>()(lpVtbl, outputStream);

    if (FAILED(hr)) {
      free(outputStream);
      throwWindowsException(hr);
    }

    if (outputStream.isNull) {
      free(outputStream);
      return null;
    }

    return IOutputStream.fromPtr(outputStream);
  }
}

final class _IDataWriterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_UnstoredBufferLength;
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
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint8 value)>>
      WriteByte;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
              Pointer<Uint8> value)>> WriteBytes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer)>>
      WriteBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
              Uint32 start, Uint32 count)>> WriteBufferRange;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      WriteBoolean;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, GUID value)>>
      WriteGuid;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int16 value)>>
      WriteInt16;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      WriteInt32;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      WriteInt64;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint16 value)>>
      WriteUInt16;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      WriteUInt32;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint64 value)>>
      WriteUInt64;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      WriteSingle;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      WriteDouble;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      WriteDateTime;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int64 value)>>
      WriteTimeSpan;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<Uint32> codeUnitCount)>> WriteString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<Uint32> codeUnitCount)>> MeasureString;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> StoreAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> operation)>> FlushAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> buffer)>> DetachBuffer;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> outputStream)>>
      DetachStream;
}
