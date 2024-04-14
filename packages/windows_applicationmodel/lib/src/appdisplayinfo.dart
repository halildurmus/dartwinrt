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
import 'package:windows_storage/windows_storage.dart';

import 'iappdisplayinfo.dart';

/// Provides an application's name, description, and logo.
class AppDisplayInfo extends IInspectable implements IAppDisplayInfo {
  AppDisplayInfo.fromPtr(super.ptr);

  late final _iAppDisplayInfo = IAppDisplayInfo.from(this);

  @override
  String get displayName => _iAppDisplayInfo.displayName;

  @override
  String get description => _iAppDisplayInfo.description;

  @override
  RandomAccessStreamReference? getLogo(Size size) =>
      _iAppDisplayInfo.getLogo(size);
}
