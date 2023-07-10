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

import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';

/// @nodoc
const IID_IContainerEncodingProperties =
    '{59ac2a57-b32a-479e-8a61-4b7f2e9e7ea0}';

class IContainerEncodingProperties extends IInspectable
    implements IMediaEncodingProperties {
  // vtable begins at 6, is 0 entries long.
  IContainerEncodingProperties.fromPtr(super.ptr);

  factory IContainerEncodingProperties.from(IInspectable interface) =>
      IContainerEncodingProperties.fromPtr(
          interface.toInterface(IID_IContainerEncodingProperties));

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;
}
