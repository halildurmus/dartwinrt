// ipinformation.dart

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

import 'iipinformation.dart';
import 'networkadapter.dart';

/// Represents the association between an IP address and an adapter on the
/// network.
///
/// {@category Class}
/// {@category winrt}
class IPInformation extends IInspectable implements IIPInformation {
  IPInformation.fromRawPointer(super.ptr);

  // IIPInformation methods
  late final _iIPInformation = IIPInformation.from(this);

  @override
  NetworkAdapter? get networkAdapter => _iIPInformation.networkAdapter;

  @override
  int? get prefixLength => _iIPInformation.prefixLength;
}
