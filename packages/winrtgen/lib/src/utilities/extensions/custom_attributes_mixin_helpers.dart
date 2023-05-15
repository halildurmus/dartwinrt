// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../constants/constants.dart';

extension CustomAttributesMixinHelpers on CustomAttributesMixin {
  /// Returns the deprecated annotation for this object if it has a
  /// `DeprecatedAttribute` (e.g.
  /// `@Deprecated('Use pickSingleFileAsync instead')`) or an empty String if it
  /// hasn't.
  String get deprecatedAnnotation {
    if (!isDeprecated) return '';
    final deprecationMessage = attributeAsString(deprecatedAttribute);
    return '@Deprecated("$deprecationMessage")';
  }

  /// Whether this object has a `DeprecatedAttribute`.
  bool get isDeprecated => existsAttribute(deprecatedAttribute);
}
