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

import 'imediaframereader.dart';
import 'imediaframereader2.dart';
import 'mediaframereaderacquisitionmode.dart';
import 'mediaframereaderstartstatus.dart';
import 'mediaframereference.dart';

/// Provides access to frames from a MediaFrameSource and notification when
/// a new frame arrives.
class MediaFrameReader extends IInspectable
    implements IMediaFrameReader, IClosable, IMediaFrameReader2 {
  MediaFrameReader.fromPtr(super.ptr);

  late final _iMediaFrameReader = IMediaFrameReader.from(this);

  @override
  int add_FrameArrived(Pointer<COMObject> handler) =>
      _iMediaFrameReader.add_FrameArrived(handler);

  @override
  void remove_FrameArrived(int token) =>
      _iMediaFrameReader.remove_FrameArrived(token);

  @override
  MediaFrameReference? tryAcquireLatestFrame() =>
      _iMediaFrameReader.tryAcquireLatestFrame();

  @override
  Future<MediaFrameReaderStartStatus> startAsync() =>
      _iMediaFrameReader.startAsync();

  @override
  Future<void> stopAsync() => _iMediaFrameReader.stopAsync();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iMediaFrameReader2 = IMediaFrameReader2.from(this);

  @override
  set acquisitionMode(MediaFrameReaderAcquisitionMode value) =>
      _iMediaFrameReader2.acquisitionMode = value;

  @override
  MediaFrameReaderAcquisitionMode get acquisitionMode =>
      _iMediaFrameReader2.acquisitionMode;
}
