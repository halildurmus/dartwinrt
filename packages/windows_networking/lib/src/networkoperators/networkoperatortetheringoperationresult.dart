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

import 'inetworkoperatortetheringoperationresult.dart';
import 'tetheringoperationstatus.dart';

/// Represents the results of a StartTetheringAsync or StopTetheringAsync
/// operation. In addition to the TetheringOperationStatus value, it can include
/// an optional error message string that provides mobile operator specific
/// context to the error.
class NetworkOperatorTetheringOperationResult extends IInspectable
    implements INetworkOperatorTetheringOperationResult {
  NetworkOperatorTetheringOperationResult.fromPtr(super.ptr);

  late final _iNetworkOperatorTetheringOperationResult =
      INetworkOperatorTetheringOperationResult.from(this);

  @override
  TetheringOperationStatus get status =>
      _iNetworkOperatorTetheringOperationResult.status;

  @override
  String get additionalErrorMessage =>
      _iNetworkOperatorTetheringOperationResult.additionalErrorMessage;
}
