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

import 'imediaframesourcegetpropertyresult.dart';
import 'mediaframesourcegetpropertystatus.dart';

/// Represents the value of a MediaFrameSource property, if it was successfully
/// retrieved, and the result status of the get operation.
class MediaFrameSourceGetPropertyResult extends IInspectable
    implements IMediaFrameSourceGetPropertyResult {
  MediaFrameSourceGetPropertyResult.fromPtr(super.ptr);

  late final _iMediaFrameSourceGetPropertyResult =
      IMediaFrameSourceGetPropertyResult.from(this);

  @override
  MediaFrameSourceGetPropertyStatus get status =>
      _iMediaFrameSourceGetPropertyResult.status;

  @override
  Object? get value => _iMediaFrameSourceGetPropertyResult.value;
}
