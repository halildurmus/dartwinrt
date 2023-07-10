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

import 'icontainerencodingproperties.dart';
import 'icontainerencodingproperties2.dart';
import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';

/// Describes a media container format.
class ContainerEncodingProperties extends IInspectable
    implements
        IContainerEncodingProperties,
        IMediaEncodingProperties,
        IContainerEncodingProperties2 {
  ContainerEncodingProperties() : super(activateClass(_className));
  ContainerEncodingProperties.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.ContainerEncodingProperties';

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;

  late final _iContainerEncodingProperties2 =
      IContainerEncodingProperties2.from(this);

  @override
  ContainerEncodingProperties? copy() => _iContainerEncodingProperties2.copy();
}
