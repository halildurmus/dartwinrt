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

import 'icharactergrouping.dart';

/// A container for character group information. Characters are grouped in
/// an index that enables an application to determine where the grouping
/// boundaries are.
class CharacterGrouping extends IInspectable implements ICharacterGrouping {
  CharacterGrouping.fromPtr(super.ptr);

  late final _iCharacterGrouping = ICharacterGrouping.from(this);

  @override
  String get first => _iCharacterGrouping.first;

  @override
  String get label => _iCharacterGrouping.label;
}
