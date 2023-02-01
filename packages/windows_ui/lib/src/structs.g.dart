// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// Describes a color in terms of alpha, red, green, and blue channels.
///
/// {@category struct}
class Color extends Struct {
  @Uint8()
  external int a;

  @Uint8()
  external int r;

  @Uint8()
  external int g;

  @Uint8()
  external int b;
}
