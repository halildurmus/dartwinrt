// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the Exchangeable Image File (EXIF) orientation flag of the
/// photo. This flag describes how to rotate the photo to display it
/// correctly.
///
/// {@category enum}
enum PhotoOrientation implements WinRTEnum {
  unspecified(0),
  normal(1),
  flipHorizontal(2),
  rotate180(3),
  flipVertical(4),
  transpose(5),
  rotate270(6),
  transverse(7),
  rotate90(8);

  @override
  final int value;

  const PhotoOrientation(this.value);

  factory PhotoOrientation.from(int value) =>
      PhotoOrientation.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates a system-defined group of file properties.
///
/// {@category enum}
class PropertyPrefetchOptions extends WinRTFlagsEnum<PropertyPrefetchOptions> {
  const PropertyPrefetchOptions(super.value, {super.name});

  factory PropertyPrefetchOptions.from(int value) =>
      PropertyPrefetchOptions.values.firstWhere((e) => e.value == value,
          orElse: () => PropertyPrefetchOptions(value));

  static const none = PropertyPrefetchOptions(0, name: 'none');
  static const musicProperties =
      PropertyPrefetchOptions(1, name: 'musicProperties');
  static const videoProperties =
      PropertyPrefetchOptions(2, name: 'videoProperties');
  static const imageProperties =
      PropertyPrefetchOptions(4, name: 'imageProperties');
  static const documentProperties =
      PropertyPrefetchOptions(8, name: 'documentProperties');
  static const basicProperties =
      PropertyPrefetchOptions(16, name: 'basicProperties');

  static const List<PropertyPrefetchOptions> values = [
    none,
    musicProperties,
    videoProperties,
    imageProperties,
    documentProperties,
    basicProperties
  ];

  @override
  PropertyPrefetchOptions operator &(PropertyPrefetchOptions other) =>
      PropertyPrefetchOptions(value & other.value);

  @override
  PropertyPrefetchOptions operator |(PropertyPrefetchOptions other) =>
      PropertyPrefetchOptions(value | other.value);
}

/// Describes the purpose of the thumbnail to determine how to adjust the
/// thumbnail image to retrieve.
///
/// {@category enum}
enum ThumbnailMode implements WinRTEnum {
  picturesView(0),
  videosView(1),
  musicView(2),
  documentsView(3),
  listView(4),
  singleItem(5);

  @override
  final int value;

  const ThumbnailMode(this.value);

  factory ThumbnailMode.from(int value) =>
      ThumbnailMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes the behavior used to retrieve and adjust thumbnails, including
/// the size and quality of the image and how quickly the thumbnail image is
/// retrieved.
///
/// {@category enum}
class ThumbnailOptions extends WinRTFlagsEnum<ThumbnailOptions> {
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

/// Indicates whether the thumbnail is an icon or an image.
///
/// {@category enum}
enum ThumbnailType implements WinRTEnum {
  image(0),
  icon(1);

  @override
  final int value;

  const ThumbnailType(this.value);

  factory ThumbnailType.from(int value) =>
      ThumbnailType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates how to rotate the video to display it correctly.
///
/// {@category enum}
enum VideoOrientation implements WinRTEnum {
  normal(0),
  rotate90(90),
  rotate180(180),
  rotate270(270);

  @override
  final int value;

  const VideoOrientation(this.value);

  factory VideoOrientation.from(int value) =>
      VideoOrientation.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
