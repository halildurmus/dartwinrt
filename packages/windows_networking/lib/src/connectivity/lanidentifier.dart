// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ilanidentifier.dart';
import 'lanidentifierdata.dart';

/// Represents physical identification data for a specific NetworkAdapter
/// object. For a code example showing how to retrieve data represented by a
/// LanIdentifier object, see How to retrieve network adapter and locality
/// information (XAML).
///
/// {@category class}
class LanIdentifier extends IInspectable implements ILanIdentifier {
  LanIdentifier.fromRawPointer(super.ptr);

  // ILanIdentifier methods
  late final _iLanIdentifier = ILanIdentifier.from(this);

  @override
  LanIdentifierData? get infrastructureId => _iLanIdentifier.infrastructureId;

  @override
  LanIdentifierData? get portId => _iLanIdentifier.portId;

  @override
  Guid get networkAdapterId => _iLanIdentifier.networkAdapterId;
}
