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

import 'iprinting3dmultiplepropertymaterial.dart';

/// Represents a combination of properties and/or materials from the
/// material groups specified in `MaterialGroupIndices`.
///
/// {@category class}
class Printing3DMultiplePropertyMaterial extends IInspectable
    implements IPrinting3DMultiplePropertyMaterial {
  Printing3DMultiplePropertyMaterial() : super(ActivateClass(_className));
  Printing3DMultiplePropertyMaterial.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Graphics.Printing3D.Printing3DMultiplePropertyMaterial';

  // IPrinting3DMultiplePropertyMaterial methods
  late final _iPrinting3DMultiplePropertyMaterial =
      IPrinting3DMultiplePropertyMaterial.from(this);

  @override
  IVector<int> get materialIndices =>
      _iPrinting3DMultiplePropertyMaterial.materialIndices;
}
