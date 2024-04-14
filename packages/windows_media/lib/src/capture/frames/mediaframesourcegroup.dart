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

import 'imediaframesourcegroup.dart';
import 'imediaframesourcegroupstatics.dart';
import 'mediaframesourceinfo.dart';

/// Represents a group of media frame sources that can be used simultaneously by
/// a MediaCapture.
class MediaFrameSourceGroup extends IInspectable
    implements IMediaFrameSourceGroup {
  MediaFrameSourceGroup.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.Capture.Frames.MediaFrameSourceGroup';

  static Future<List<MediaFrameSourceGroup?>> findAllAsync() =>
      createActivationFactory(IMediaFrameSourceGroupStatics.fromPtr, _className,
              IID_IMediaFrameSourceGroupStatics)
          .findAllAsync();

  static Future<MediaFrameSourceGroup?> fromIdAsync(String id) =>
      createActivationFactory(IMediaFrameSourceGroupStatics.fromPtr, _className,
              IID_IMediaFrameSourceGroupStatics)
          .fromIdAsync(id);

  static String getDeviceSelector() => createActivationFactory(
          IMediaFrameSourceGroupStatics.fromPtr,
          _className,
          IID_IMediaFrameSourceGroupStatics)
      .getDeviceSelector();

  late final _iMediaFrameSourceGroup = IMediaFrameSourceGroup.from(this);

  @override
  String get id => _iMediaFrameSourceGroup.id;

  @override
  String get displayName => _iMediaFrameSourceGroup.displayName;

  @override
  List<MediaFrameSourceInfo?>? get sourceInfos =>
      _iMediaFrameSourceGroup.sourceInfos;
}
