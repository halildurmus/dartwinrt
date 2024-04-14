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

import 'ibitmaptypedvalue.dart';
import 'ibitmaptypedvaluefactory.dart';

/// A value along with an enumeration specifying its data type.
class BitmapTypedValue extends IInspectable implements IBitmapTypedValue {
  BitmapTypedValue.fromPtr(super.ptr);

  static const _className = 'Windows.Graphics.Imaging.BitmapTypedValue';

  factory BitmapTypedValue.create(Object? value, PropertyType type) =>
      createActivationFactory(IBitmapTypedValueFactory.fromPtr, _className,
              IID_IBitmapTypedValueFactory)
          .create(value, type);

  late final _iBitmapTypedValue = IBitmapTypedValue.from(this);

  @override
  Object? get value => _iBitmapTypedValue.value;

  @override
  PropertyType get type => _iBitmapTypedValue.type;
}
