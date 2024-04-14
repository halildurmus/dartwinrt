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

import 'imultisourcemediaframereader.dart';
import 'imultisourcemediaframereader2.dart';
import 'mediaframereaderacquisitionmode.dart';
import 'multisourcemediaframereaderstartstatus.dart';
import 'multisourcemediaframereference.dart';

/// Provides access to time-correlated frames from multiple MediaFrameSource and
/// provides notifications when new frames arrive. This is useful if you need to
/// process frames from different sources, such as a depth camera and an rbg
/// camera, and you need to make sure that the frames from each source were
/// captured close to each other in time.
class MultiSourceMediaFrameReader extends IInspectable
    implements
        IMultiSourceMediaFrameReader,
        IClosable,
        IMultiSourceMediaFrameReader2 {
  MultiSourceMediaFrameReader.fromPtr(super.ptr);

  late final _iMultiSourceMediaFrameReader =
      IMultiSourceMediaFrameReader.from(this);

  @override
  int add_FrameArrived(Pointer<COMObject> handler) =>
      _iMultiSourceMediaFrameReader.add_FrameArrived(handler);

  @override
  void remove_FrameArrived(int token) =>
      _iMultiSourceMediaFrameReader.remove_FrameArrived(token);

  @override
  MultiSourceMediaFrameReference? tryAcquireLatestFrame() =>
      _iMultiSourceMediaFrameReader.tryAcquireLatestFrame();

  @override
  Future<MultiSourceMediaFrameReaderStartStatus> startAsync() =>
      _iMultiSourceMediaFrameReader.startAsync();

  @override
  Future<void> stopAsync() => _iMultiSourceMediaFrameReader.stopAsync();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iMultiSourceMediaFrameReader2 =
      IMultiSourceMediaFrameReader2.from(this);

  @override
  set acquisitionMode(MediaFrameReaderAcquisitionMode value) =>
      _iMultiSourceMediaFrameReader2.acquisitionMode = value;

  @override
  MediaFrameReaderAcquisitionMode get acquisitionMode =>
      _iMultiSourceMediaFrameReader2.acquisitionMode;
}
