// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Provides values that identify storage folders.
///
/// {@category enum}
enum KnownFolderId implements WinRTEnum {
  appCaptures(0),
  cameraRoll(1),
  documentsLibrary(2),
  homeGroup(3),
  mediaServerDevices(4),
  musicLibrary(5),
  objects3D(6),
  picturesLibrary(7),
  playlists(8),
  recordedCalls(9),
  removableDevices(10),
  savedPictures(11),
  screenshots(12),
  videosLibrary(13),
  allAppMods(14),
  currentAppMods(15),
  downloadsFolder(16);

  @override
  final int value;

  const KnownFolderId(this.value);

  factory KnownFolderId.from(int value) =>
      KnownFolderId.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
