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

import 'ixmldomimplementation.dart';

/// Provides methods that are independent of any particular instance of the
/// document object model.
///
/// {@category class}
class XmlDomImplementation extends IInspectable
    implements IXmlDomImplementation {
  XmlDomImplementation.fromPtr(super.ptr);

  late final _iXmlDomImplementation = IXmlDomImplementation.from(this);

  @override
  bool hasFeature(String feature, Object? version) =>
      _iXmlDomImplementation.hasFeature(feature, version);
}
