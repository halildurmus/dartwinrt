// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../utils.dart';
import 'winrt_method.dart';

abstract class WinRTPropertyProjection extends WinRTMethodProjection {
  WinRTPropertyProjection(super.method, super.vtableOffset);

  /// Strip off all underscores, even if double underscores (e.g.
  /// `get_Languages` -> `languages`, `put__Data` -> `data`).
  String get exposedMethodName {
    final String formattedMethodName;
    if (method.name.startsWith('get__') || method.name.startsWith('put__')) {
      // e.g. get__Languages -> Languages, put__Data -> Data
      formattedMethodName = method.name.substring(5);
    } else {
      // e.g. get_Size -> Size, put_Completed -> Completed
      formattedMethodName = method.name.substring(4);
    }

    return safeIdentifierForString(formattedMethodName).toCamelCase();
  }
}
