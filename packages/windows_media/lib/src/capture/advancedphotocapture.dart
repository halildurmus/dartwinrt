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

import 'advancedcapturedphoto.dart';
import 'iadvancedphotocapture.dart';

/// Provides methods for capturing photos using system-provided
/// computational photography techniques.
class AdvancedPhotoCapture extends IInspectable
    implements IAdvancedPhotoCapture {
  AdvancedPhotoCapture.fromPtr(super.ptr);

  late final _iAdvancedPhotoCapture = IAdvancedPhotoCapture.from(this);

  @override
  Future<AdvancedCapturedPhoto?> captureAsync() =>
      _iAdvancedPhotoCapture.captureAsync();

  @override
  Future<AdvancedCapturedPhoto?> captureWithContextAsync(Object? context) =>
      _iAdvancedPhotoCapture.captureWithContextAsync(context);

  @override
  int add_OptionalReferencePhotoCaptured(Pointer<COMObject> handler) =>
      _iAdvancedPhotoCapture.add_OptionalReferencePhotoCaptured(handler);

  @override
  void remove_OptionalReferencePhotoCaptured(int token) =>
      _iAdvancedPhotoCapture.remove_OptionalReferencePhotoCaptured(token);

  @override
  int add_AllPhotosCaptured(Pointer<COMObject> handler) =>
      _iAdvancedPhotoCapture.add_AllPhotosCaptured(handler);

  @override
  void remove_AllPhotosCaptured(int token) =>
      _iAdvancedPhotoCapture.remove_AllPhotosCaptured(token);

  @override
  Future<void> finishAsync() => _iAdvancedPhotoCapture.finishAsync();
}
