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

import 'ilowlagphotosequencecapture.dart';

/// Provides methods for taking a rapid sequence of low shutter lag photos.
class LowLagPhotoSequenceCapture extends IInspectable
    implements ILowLagPhotoSequenceCapture {
  LowLagPhotoSequenceCapture.fromPtr(super.ptr);

  late final _iLowLagPhotoSequenceCapture =
      ILowLagPhotoSequenceCapture.from(this);

  @override
  Future<void> startAsync() => _iLowLagPhotoSequenceCapture.startAsync();

  @override
  Future<void> stopAsync() => _iLowLagPhotoSequenceCapture.stopAsync();

  @override
  Future<void> finishAsync() => _iLowLagPhotoSequenceCapture.finishAsync();

  @override
  int add_PhotoCaptured(Pointer<COMObject> handler) =>
      _iLowLagPhotoSequenceCapture.add_PhotoCaptured(handler);

  @override
  void remove_PhotoCaptured(int token) =>
      _iLowLagPhotoSequenceCapture.remove_PhotoCaptured(token);
}
