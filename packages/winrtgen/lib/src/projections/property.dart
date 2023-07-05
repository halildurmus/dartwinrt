// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../utilities/utilities.dart';
import 'method.dart';

abstract class PropertyProjection extends MethodProjection {
  PropertyProjection(super.method, super.vtableOffset);

  /// Strip off all underscores, even if double underscores (e.g.
  /// `get_Languages` -> `languages`, `put__Data` -> `data`).
  @override
  String get camelCasedName {
    final String formattedMethodName;
    if (name.startsWith('get__') || name.startsWith('put__')) {
      // e.g. get__Languages -> Languages, put__Data -> Data
      formattedMethodName = name.substring(5);
    } else {
      // e.g. get_Size -> Size, put_Completed -> Completed
      formattedMethodName = name.substring(4);
    }

    return safeIdentifierForString(formattedMethodName.toCamelCase());
  }
}
