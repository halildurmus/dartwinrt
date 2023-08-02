// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../utilities/utilities.dart';
import 'method.dart';

abstract base class PropertyProjection extends MethodProjection {
  PropertyProjection(super.method, super.vtableOffset);

  /// Strip off all underscores, even if double underscores (e.g.,
  /// `get_Languages` -> `languages`, `put__Data` -> `data`).
  @override
  String get camelCasedName {
    final String formattedName;
    if (name.startsWith('get__') || name.startsWith('put__')) {
      // e.g. get__Languages -> Languages, put__Data -> Data
      formattedName = name.substring(5);
    } else {
      // e.g. get_Size -> Size, put_Completed -> Completed
      formattedName = name.substring(4);
    }

    return safeIdentifierForString(formattedName.toCamelCase());
  }
}
