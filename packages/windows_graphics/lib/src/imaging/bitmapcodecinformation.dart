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

import 'ibitmapcodecinformation.dart';

/// Provides access to information about a decoder or encoder.
class BitmapCodecInformation extends IInspectable
    implements IBitmapCodecInformation {
  BitmapCodecInformation.fromPtr(super.ptr);

  late final _iBitmapCodecInformation = IBitmapCodecInformation.from(this);

  @override
  Guid get codecId => _iBitmapCodecInformation.codecId;

  @override
  List<String>? get fileExtensions => _iBitmapCodecInformation.fileExtensions;

  @override
  String get friendlyName => _iBitmapCodecInformation.friendlyName;

  @override
  List<String>? get mimeTypes => _iBitmapCodecInformation.mimeTypes;
}
