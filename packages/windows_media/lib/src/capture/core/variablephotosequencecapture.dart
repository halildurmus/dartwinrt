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

import 'ivariablephotosequencecapture.dart';
import 'ivariablephotosequencecapture2.dart';

/// Provides methods and events that enable the capture of variable photo
/// sequences.
class VariablePhotoSequenceCapture extends IInspectable
    implements IVariablePhotoSequenceCapture, IVariablePhotoSequenceCapture2 {
  VariablePhotoSequenceCapture.fromPtr(super.ptr);

  late final _iVariablePhotoSequenceCapture =
      IVariablePhotoSequenceCapture.from(this);

  @override
  Future<void> startAsync() => _iVariablePhotoSequenceCapture.startAsync();

  @override
  Future<void> stopAsync() => _iVariablePhotoSequenceCapture.stopAsync();

  @override
  Future<void> finishAsync() => _iVariablePhotoSequenceCapture.finishAsync();

  @override
  int add_PhotoCaptured(Pointer<COMObject> handler) =>
      _iVariablePhotoSequenceCapture.add_PhotoCaptured(handler);

  @override
  void remove_PhotoCaptured(int token) =>
      _iVariablePhotoSequenceCapture.remove_PhotoCaptured(token);

  @override
  int add_Stopped(Pointer<COMObject> handler) =>
      _iVariablePhotoSequenceCapture.add_Stopped(handler);

  @override
  void remove_Stopped(int token) =>
      _iVariablePhotoSequenceCapture.remove_Stopped(token);

  late final _iVariablePhotoSequenceCapture2 =
      IVariablePhotoSequenceCapture2.from(this);

  @override
  Future<void> updateSettingsAsync() =>
      _iVariablePhotoSequenceCapture2.updateSettingsAsync();
}
