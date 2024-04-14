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

import 'iipinformation.dart';
import 'networkadapter.dart';

/// Represents the association between an IP address and an adapter on the
/// network.
class IPInformation extends IInspectable implements IIPInformation {
  IPInformation.fromPtr(super.ptr);

  late final _iIPInformation = IIPInformation.from(this);

  @override
  NetworkAdapter? get networkAdapter => _iIPInformation.networkAdapter;

  @override
  int? get prefixLength => _iIPInformation.prefixLength;
}
