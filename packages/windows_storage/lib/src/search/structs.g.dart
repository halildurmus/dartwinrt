// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// An entry in the SortOrder list the specifies a property and ordering
/// that is used to sort query results.
///
/// {@category struct}
class SortEntry extends Struct {
  @IntPtr()
  external int propertyName;

  @Bool()
  external bool ascendingOrder;
}
