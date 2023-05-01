// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates a system-defined group of file properties.
///
/// {@category enum}
final class PropertyPrefetchOptions
    extends WinRTFlagsEnum<PropertyPrefetchOptions> {
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
