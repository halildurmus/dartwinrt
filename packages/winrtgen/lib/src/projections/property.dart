// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../extensions/extensions.dart';
import 'method.dart';

abstract base class PropertyProjection extends MethodProjection {
  PropertyProjection(super.method, super.vtableOffset);

  static final _propertyPrefixRegExp = RegExp(r'^(get_|put_)([a-zA-Z]+)$');

  /// Strip off all underscores (e.g., `get_Languages` -> `languages`,
  /// `put_Data` -> `data`).
  @override
  String get camelCasedName {
    assert(_propertyPrefixRegExp.hasMatch(name));
    // e.g. get_Size -> Size, put_Completed -> Completed
    return name.substring(4).toCamelCase().toSafeIdentifier();
  }
}
