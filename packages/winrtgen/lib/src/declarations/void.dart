// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_method.dart';

class WinRTVoidMethodProjection extends WinRTMethodProjection {
  WinRTVoidMethodProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      void $camelCasedName($methodParams) {
        $parametersPreamble

        ${ffiCall()}

        $parametersPostamble
      }
  ''';
}
