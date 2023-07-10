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
import 'package:windows_graphics/windows_graphics.dart';
import 'package:windows_storage/windows_storage.dart';

import 'capturedframecontrolvalues.dart';
import 'icapturedframe.dart';
import 'icapturedframe2.dart';
import 'icapturedframewithsoftwarebitmap.dart';

/// Represents a captured video frame.
class CapturedFrame extends IInspectable
    implements
        ICapturedFrame,
        IRandomAccessStreamWithContentType,
        IContentTypeProvider,
        IRandomAccessStream,
        IOutputStream,
        IClosable,
        IInputStream,
        ICapturedFrameWithSoftwareBitmap,
        ICapturedFrame2 {
  CapturedFrame.fromPtr(super.ptr);

  late final _iCapturedFrame = ICapturedFrame.from(this);

  @override
  int get width => _iCapturedFrame.width;

  @override
  int get height => _iCapturedFrame.height;

  late final _iContentTypeProvider = IContentTypeProvider.from(this);

  @override
  String get contentType => _iContentTypeProvider.contentType;

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

  late final _iCapturedFrameWithSoftwareBitmap =
      ICapturedFrameWithSoftwareBitmap.from(this);

  @override
  SoftwareBitmap? get softwareBitmap =>
      _iCapturedFrameWithSoftwareBitmap.softwareBitmap;

  late final _iCapturedFrame2 = ICapturedFrame2.from(this);

  @override
  CapturedFrameControlValues? get controlValues =>
      _iCapturedFrame2.controlValues;

  @override
  BitmapPropertySet? get bitmapProperties => _iCapturedFrame2.bitmapProperties;
}
