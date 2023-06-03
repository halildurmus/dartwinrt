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

import 'connectionprofile.dart';
import 'inetworkadapter.dart';
import 'networkitem.dart';

/// Represents a network adapter.
class NetworkAdapter extends IInspectable implements INetworkAdapter {
  NetworkAdapter.fromPtr(super.ptr);

  late final _iNetworkAdapter = INetworkAdapter.from(this);

  @override
  int get outboundMaxBitsPerSecond => _iNetworkAdapter.outboundMaxBitsPerSecond;

  @override
  int get inboundMaxBitsPerSecond => _iNetworkAdapter.inboundMaxBitsPerSecond;

  @override
  int get ianaInterfaceType => _iNetworkAdapter.ianaInterfaceType;

  @override
  NetworkItem? get networkItem => _iNetworkAdapter.networkItem;

  @override
  Guid get networkAdapterId => _iNetworkAdapter.networkAdapterId;

  @override
  Future<ConnectionProfile?> getConnectedProfileAsync() =>
      _iNetworkAdapter.getConnectedProfileAsync();
}
