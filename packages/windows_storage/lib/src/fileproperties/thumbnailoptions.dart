// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the behavior used to retrieve and adjust thumbnails, including the
/// size and quality of the image and how quickly the thumbnail image is
/// retrieved.
final class ThumbnailOptions extends WinRTFlagsEnum<ThumbnailOptions> {
  const ThumbnailOptions(super.value, {super.name});

  factory ThumbnailOptions.from(int value) =>
      ThumbnailOptions.values.firstWhere((e) => e.value == value,
          orElse: () => ThumbnailOptions(value));

  static const none = ThumbnailOptions(0, name: 'none');
  static const returnOnlyIfCached =
      ThumbnailOptions(1, name: 'returnOnlyIfCached');
  static const resizeThumbnail = ThumbnailOptions(2, name: 'resizeThumbnail');
  static const useCurrentScale = ThumbnailOptions(4, name: 'useCurrentScale');

  static const List<ThumbnailOptions> values = [
    none,
    returnOnlyIfCached,
    resizeThumbnail,
    useCurrentScale
  ];

  @override
  ThumbnailOptions operator &(ThumbnailOptions other) =>
      ThumbnailOptions(value & other.value);

  @override
  ThumbnailOptions operator |(ThumbnailOptions other) =>
      ThumbnailOptions(value | other.value);
}
