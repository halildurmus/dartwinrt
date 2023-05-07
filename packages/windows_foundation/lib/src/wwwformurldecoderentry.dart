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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iwwwformurldecoderentry.dart';

/// Represents a name-value pair in a URL query string.
///
/// {@category class}
class WwwFormUrlDecoderEntry extends IInspectable
    implements IWwwFormUrlDecoderEntry {
  WwwFormUrlDecoderEntry.fromPtr(super.ptr);

  late final _iWwwFormUrlDecoderEntry = IWwwFormUrlDecoderEntry.from(this);

  @override
  String get name => _iWwwFormUrlDecoderEntry.name;

  @override
  String get value => _iWwwFormUrlDecoderEntry.value;
}
