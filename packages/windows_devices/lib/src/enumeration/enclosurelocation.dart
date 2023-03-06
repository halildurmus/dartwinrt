// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ienclosurelocation.dart';
import 'ienclosurelocation2.dart';
import 'panel.dart';

/// Describes the physical location of a device in its enclosure.
///
/// {@category class}
class EnclosureLocation extends IInspectable
    implements IEnclosureLocation, IEnclosureLocation2 {
  EnclosureLocation.fromPtr(super.ptr);

  late final _iEnclosureLocation = IEnclosureLocation.from(this);

  @override
  bool get inDock => _iEnclosureLocation.inDock;

  @override
  bool get inLid => _iEnclosureLocation.inLid;

  @override
  Panel get panel => _iEnclosureLocation.panel;

  late final _iEnclosureLocation2 = IEnclosureLocation2.from(this);

  @override
  int get rotationAngleInDegreesClockwise =>
      _iEnclosureLocation2.rotationAngleInDegreesClockwise;
}
