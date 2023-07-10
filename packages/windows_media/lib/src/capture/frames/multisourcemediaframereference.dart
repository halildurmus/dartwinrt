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

import 'imultisourcemediaframereference.dart';
import 'mediaframereference.dart';

/// A wrapper class that provides access to time-correlated frames obtained
/// from one or more MediaFrameSource objects. Call
/// TryGetFrameReferenceBySourceId to get the MediaFrameReference
/// representing a frame from a particular media frame source.
class MultiSourceMediaFrameReference extends IInspectable
    implements IMultiSourceMediaFrameReference, IClosable {
  MultiSourceMediaFrameReference.fromPtr(super.ptr);

  late final _iMultiSourceMediaFrameReference =
      IMultiSourceMediaFrameReference.from(this);

  @override
  MediaFrameReference? tryGetFrameReferenceBySourceId(String sourceId) =>
      _iMultiSourceMediaFrameReference.tryGetFrameReferenceBySourceId(sourceId);

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
