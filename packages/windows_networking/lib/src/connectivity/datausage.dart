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

import 'idatausage.dart';

/// Represents data usage information returned by the
/// ConnectionProfile.GetLocalUsage method.
@Deprecated(
    "DataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use NetworkUsage.")
class DataUsage extends IInspectable implements IDataUsage {
  DataUsage.fromPtr(super.ptr);

  late final _iDataUsage = IDataUsage.from(this);

  @Deprecated(
      "IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
  @override
  int get bytesSent => _iDataUsage.bytesSent;

  @Deprecated(
      "IDataUsage may be altered or unavailable for releases after Windows 8.1. Instead, use INetworkUsage.")
  @override
  int get bytesReceived => _iDataUsage.bytesReceived;
}
