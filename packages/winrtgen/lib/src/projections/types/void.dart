// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../method.dart';

/// Method projection for `void` methods.
final class VoidMethodProjection extends MethodProjection {
  VoidMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'void';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall()}
  }
''';
}
