// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'byteorder.dart';
import 'datawriterstoreoperation.dart';
import 'ibuffer.dart';
import 'idatawriter.dart';
import 'idatawriterfactory.dart';
import 'ioutputstream.dart';
import 'unicodeencoding.dart';

/// Writes data to an output stream.
///
/// {@category class}
class DataWriter extends IInspectable implements IDataWriter, IClosable {
  DataWriter() : super(activateClass(_className));
  DataWriter.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Streams.DataWriter';

  factory DataWriter.createDataWriter(IOutputStream outputStream) =>
      createActivationFactory(
              IDataWriterFactory.fromPtr, _className, IID_IDataWriterFactory)
          .createDataWriter(outputStream);

  late final _iDataWriter = IDataWriter.from(this);

  @override
  int get unstoredBufferLength => _iDataWriter.unstoredBufferLength;

  @override
  UnicodeEncoding get unicodeEncoding => _iDataWriter.unicodeEncoding;

  @override
  set unicodeEncoding(UnicodeEncoding value) =>
      _iDataWriter.unicodeEncoding = value;

  @override
  ByteOrder get byteOrder => _iDataWriter.byteOrder;

  @override
  set byteOrder(ByteOrder value) => _iDataWriter.byteOrder = value;

  @override
  void writeByte(int value) => _iDataWriter.writeByte(value);

  @override
  void writeBytes(List<int> value) => _iDataWriter.writeBytes(value);

  @override
  void writeBuffer(IBuffer? buffer) => _iDataWriter.writeBuffer(buffer);

  @override
  void writeBufferRange(IBuffer? buffer, int start, int count) =>
      _iDataWriter.writeBufferRange(buffer, start, count);

  @override
  void writeBoolean(bool value) => _iDataWriter.writeBoolean(value);

  @override
  void writeGuid(Guid value) => _iDataWriter.writeGuid(value);

  @override
  void writeInt16(int value) => _iDataWriter.writeInt16(value);

  @override
  void writeInt32(int value) => _iDataWriter.writeInt32(value);

  @override
  void writeInt64(int value) => _iDataWriter.writeInt64(value);

  @override
  void writeUInt16(int value) => _iDataWriter.writeUInt16(value);

  @override
  void writeUInt32(int value) => _iDataWriter.writeUInt32(value);

  @override
  void writeUInt64(int value) => _iDataWriter.writeUInt64(value);

  @override
  void writeSingle(double value) => _iDataWriter.writeSingle(value);

  @override
  void writeDouble(double value) => _iDataWriter.writeDouble(value);

  @override
  void writeDateTime(DateTime value) => _iDataWriter.writeDateTime(value);

  @override
  void writeTimeSpan(Duration value) => _iDataWriter.writeTimeSpan(value);

  @override
  int writeString(String value) => _iDataWriter.writeString(value);

  @override
  int measureString(String value) => _iDataWriter.measureString(value);

  @override
  Future<int> storeAsync() => _iDataWriter.storeAsync();

  @override
  Future<bool> flushAsync() => _iDataWriter.flushAsync();

  @override
  IBuffer? detachBuffer() => _iDataWriter.detachBuffer();

  @override
  IOutputStream? detachStream() => _iDataWriter.detachStream();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
