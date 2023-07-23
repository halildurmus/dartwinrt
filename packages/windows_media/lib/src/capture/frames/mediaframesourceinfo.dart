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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_perception/windows_perception.dart';
import 'package:windows_ui/windows_ui.dart';

import '../mediacapturevideoprofilemediadescription.dart';
import '../mediastreamtype.dart';
import 'imediaframesourceinfo.dart';
import 'imediaframesourceinfo2.dart';
import 'imediaframesourceinfo3.dart';
import 'imediaframesourceinfo4.dart';
import 'mediaframesourcegroup.dart';
import 'mediaframesourcekind.dart';

/// Provides information about a MediaFrameSource.
class MediaFrameSourceInfo extends IInspectable
    implements
        IMediaFrameSourceInfo,
        IMediaFrameSourceInfo2,
        IMediaFrameSourceInfo3,
        IMediaFrameSourceInfo4 {
  MediaFrameSourceInfo.fromPtr(super.ptr);

  late final _iMediaFrameSourceInfo = IMediaFrameSourceInfo.from(this);

  @override
  String get id => _iMediaFrameSourceInfo.id;

  @override
  MediaStreamType get mediaStreamType => _iMediaFrameSourceInfo.mediaStreamType;

  @override
  MediaFrameSourceKind get sourceKind => _iMediaFrameSourceInfo.sourceKind;

  @override
  MediaFrameSourceGroup? get sourceGroup => _iMediaFrameSourceInfo.sourceGroup;

  @override
  DeviceInformation? get deviceInformation =>
      _iMediaFrameSourceInfo.deviceInformation;

  @override
  Map<Guid, Object?>? get properties => _iMediaFrameSourceInfo.properties;

  @override
  SpatialCoordinateSystem? get coordinateSystem =>
      _iMediaFrameSourceInfo.coordinateSystem;

  late final _iMediaFrameSourceInfo2 = IMediaFrameSourceInfo2.from(this);

  @override
  String get profileId => _iMediaFrameSourceInfo2.profileId;

  @override
  List<MediaCaptureVideoProfileMediaDescription?>?
      get videoProfileMediaDescription =>
          _iMediaFrameSourceInfo2.videoProfileMediaDescription;

  late final _iMediaFrameSourceInfo3 = IMediaFrameSourceInfo3.from(this);

  @override
  Panel getRelativePanel(DisplayRegion? displayRegion) =>
      _iMediaFrameSourceInfo3.getRelativePanel(displayRegion);

  late final _iMediaFrameSourceInfo4 = IMediaFrameSourceInfo4.from(this);

  @override
  bool get isShareable => _iMediaFrameSourceInfo4.isShareable;
}
