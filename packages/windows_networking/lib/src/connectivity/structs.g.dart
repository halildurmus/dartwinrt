// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

/// Defines the desired state of the connection profile for which usage data
/// is returned by the method GetNetworkUsageAsync.
///
/// {@category struct}
class NetworkUsageStates extends Struct {
  @Int32()
  external int roaming;

  @Int32()
  external int shared;
}
