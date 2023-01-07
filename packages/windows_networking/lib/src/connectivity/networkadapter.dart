// networkadapter.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'connectionprofile.dart';
import 'inetworkadapter.dart';
import 'networkitem.dart';

/// Represents a network adapter.
///
/// {@category Class}
/// {@category winrt}
class NetworkAdapter extends IInspectable implements INetworkAdapter {
  NetworkAdapter.fromRawPointer(super.ptr);

  // INetworkAdapter methods
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
