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

import 'bitmappropertyset.dart';
import 'ibitmappropertiesview.dart';

/// Provides read access to image properties and metadata. A particular
/// instance of BitmapPropertiesView may represent the entire contents of
/// the frame metadata, or any nested metadata block within the frame.
class BitmapPropertiesView extends IInspectable
    implements IBitmapPropertiesView {
  BitmapPropertiesView.fromPtr(super.ptr);

  late final _iBitmapPropertiesView = IBitmapPropertiesView.from(this);

  @override
  Future<BitmapPropertySet> getPropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iBitmapPropertiesView.getPropertiesAsync(propertiesToRetrieve);
}
