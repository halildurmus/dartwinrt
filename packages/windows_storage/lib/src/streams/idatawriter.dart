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
  // vtable begins at 6, is 27 entries long.
  IDataWriter.fromPtr(super.ptr);

  factory IDataWriter.from(IInspectable interface) =>
      IDataWriter.fromPtr(interface.toInterface(IID_IDataWriter));

  int get unstoredBufferLength {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  UnicodeEncoding get unicodeEncoding {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UnicodeEncoding.from(value.value);
    } finally {
      free(value);
    }
  }

  set unicodeEncoding(UnicodeEncoding value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  ByteOrder get byteOrder {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ByteOrder.from(value.value);
    } finally {
      free(value);
    }
  }

  set byteOrder(ByteOrder value) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeByte(int value) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint8 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBytes(List<int> value) {
    final valueArray = value.toArray<Uint8>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Uint32 valueSize,
                            Pointer<Uint8> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int valueSize,
                    Pointer<Uint8> value)>()(
        ptr.ref.lpVtbl, value.length, valueArray);

    free(valueArray);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBuffer(IBuffer? buffer) {
    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer buffer)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        ptr.ref.lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBufferRange(IBuffer? buffer, int start, int count) {
    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer,
                        Uint32 start, Uint32 count)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer, int start,
                int count)>()(ptr.ref.lpVtbl, buffer.lpVtbl, start, count);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeBoolean(bool value) {
    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeGuid(Guid value) {
    final valueNativeStructPtr = value.toNativeGUID();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, GUID value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, GUID value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt16(int value) {
    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int16 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt32(int value) {
    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeInt64(int value) {
    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt16(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(20)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint16 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt32(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(21)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint32 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeUInt64(int value) {
    final hr =
        ptr.ref.vtable
                .elementAt(22)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Uint64 value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeSingle(double value) {
    final hr = ptr.ref.vtable
            .elementAt(23)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Float value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeDouble(double value) {
    final hr =
        ptr.ref.vtable
                .elementAt(24)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Double value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
            ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeDateTime(DateTime value) {
    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.toWinRTDateTime());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void writeTimeSpan(Duration value) {
    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int64 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.toWinRTDuration());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int writeString(String value) {
    final codeUnitCount = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(27)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
                              Pointer<Uint32> codeUnitCount)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int value,
                      Pointer<Uint32> codeUnitCount)>()(
          ptr.ref.lpVtbl, value.toHString(), codeUnitCount);

      if (FAILED(hr)) throwWindowsException(hr);

      return codeUnitCount.value;
    } finally {
      free(codeUnitCount);
    }
  }

  int measureString(String value) {
    final codeUnitCount = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(28)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
                              Pointer<Uint32> codeUnitCount)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int value,
                      Pointer<Uint32> codeUnitCount)>()(
          ptr.ref.lpVtbl, value.toHString(), codeUnitCount);

      if (FAILED(hr)) throwWindowsException(hr);

      return codeUnitCount.value;
    } finally {
      free(codeUnitCount);
    }
  }

  Future<int> storeAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

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

    final hr = ptr.ref.vtable
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  IBuffer? detachBuffer() {
    final buffer = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(31)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> buffer)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> buffer)>()(ptr.ref.lpVtbl, buffer);

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

    final hr = ptr.ref.vtable
            .elementAt(32)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            Pointer<COMObject> outputStream)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, Pointer<COMObject> outputStream)>()(
        ptr.ref.lpVtbl, outputStream);

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
