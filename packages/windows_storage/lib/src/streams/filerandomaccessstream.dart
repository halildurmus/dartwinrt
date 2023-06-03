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
import 'package:windows_system/windows_system.dart';

import '../fileaccessmode.dart';
import '../storageopenoptions.dart';
import '../storagestreamtransaction.dart';
import 'fileopendisposition.dart';
import 'ibuffer.dart';
import 'ifilerandomaccessstreamstatics.dart';
import 'iinputstream.dart';
import 'inputstreamoptions.dart';
import 'ioutputstream.dart';
import 'irandomaccessstream.dart';

/// Supports reading and writing to a file at a specified position.
class FileRandomAccessStream extends IInspectable
    implements IRandomAccessStream, IOutputStream, IClosable, IInputStream {
  FileRandomAccessStream.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.Streams.FileRandomAccessStream';

  static Future<IRandomAccessStream?> openAsync(
          String filePath, FileAccessMode accessMode) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openAsync(filePath, accessMode);

  static Future<IRandomAccessStream?> openWithOptionsAsync(
          String filePath,
          FileAccessMode accessMode,
          StorageOpenOptions sharingOptions,
          FileOpenDisposition openDisposition) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openWithOptionsAsync(
              filePath, accessMode, sharingOptions, openDisposition);

  static Future<StorageStreamTransaction?> openTransactedWriteAsync(
          String filePath) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openTransactedWriteAsync(filePath);

  static Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
          String filePath,
          StorageOpenOptions openOptions,
          FileOpenDisposition openDisposition) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openTransactedWriteWithOptionsAsync(
              filePath, openOptions, openDisposition);

  static Future<IRandomAccessStream?> openForUserAsync(
          User? user, String filePath, FileAccessMode accessMode) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openForUserAsync(user, filePath, accessMode);

  static Future<IRandomAccessStream?> openForUserWithOptionsAsync(
          User? user,
          String filePath,
          FileAccessMode accessMode,
          StorageOpenOptions sharingOptions,
          FileOpenDisposition openDisposition) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openForUserWithOptionsAsync(
              user, filePath, accessMode, sharingOptions, openDisposition);

  static Future<StorageStreamTransaction?> openTransactedWriteForUserAsync(
          User? user, String filePath) =>
      createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
              _className, IID_IFileRandomAccessStreamStatics)
          .openTransactedWriteForUserAsync(user, filePath);

  static Future<StorageStreamTransaction?>
      openTransactedWriteForUserWithOptionsAsync(
              User? user,
              String filePath,
              StorageOpenOptions openOptions,
              FileOpenDisposition openDisposition) =>
          createActivationFactory(IFileRandomAccessStreamStatics.fromPtr,
                  _className, IID_IFileRandomAccessStreamStatics)
              .openTransactedWriteForUserWithOptionsAsync(
                  user, filePath, openOptions, openDisposition);

  late final _iRandomAccessStream = IRandomAccessStream.from(this);

  @override
  int get size => _iRandomAccessStream.size;

  @override
  set size(int value) => _iRandomAccessStream.size = value;

  @override
  IInputStream? getInputStreamAt(int position) =>
      _iRandomAccessStream.getInputStreamAt(position);

  @override
  IOutputStream? getOutputStreamAt(int position) =>
      _iRandomAccessStream.getOutputStreamAt(position);

  @override
  int get position => _iRandomAccessStream.position;

  @override
  void seek(int position) => _iRandomAccessStream.seek(position);

  @override
  IRandomAccessStream? cloneStream() => _iRandomAccessStream.cloneStream();

  @override
  bool get canRead => _iRandomAccessStream.canRead;

  @override
  bool get canWrite => _iRandomAccessStream.canWrite;

  late final _iOutputStream = IOutputStream.from(this);

  @override
  Pointer<COMObject> writeAsync(IBuffer? buffer) =>
      _iOutputStream.writeAsync(buffer);

  @override
  Future<bool> flushAsync() => _iOutputStream.flushAsync();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iInputStream = IInputStream.from(this);

  @override
  Pointer<COMObject> readAsync(
          IBuffer? buffer, int count, InputStreamOptions options) =>
      _iInputStream.readAsync(buffer, count, options);
}
