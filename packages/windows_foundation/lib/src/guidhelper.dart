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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iguidhelperstatics.dart';

/// A class containing static helper methods for working with the Guid type.
class GuidHelper extends IInspectable {
  GuidHelper.fromPtr(super.ptr);

  static const _className = 'Windows.Foundation.GuidHelper';

  static Guid createNewGuid() => createActivationFactory(
          IGuidHelperStatics.fromPtr, _className, IID_IGuidHelperStatics)
      .createNewGuid();

  static Guid get empty => createActivationFactory(
          IGuidHelperStatics.fromPtr, _className, IID_IGuidHelperStatics)
      .empty;

  static bool equals(Guid target, Guid value) => createActivationFactory(
          IGuidHelperStatics.fromPtr, _className, IID_IGuidHelperStatics)
      .equals(target, value);
}
