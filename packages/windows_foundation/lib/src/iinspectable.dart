// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

import 'internal/extensions/extensions.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IInspectable = '{af86e2e0-b12d-4c6a-9c5a-d7aa65101e90}';

/// Provides functionality required for all Windows Runtime classes.
///
/// {@category Interface}
/// {@category com}
class IInspectable extends IUnknown {
  IInspectable(super.ptr);

  factory IInspectable.from(IUnknown interface) =>
      IInspectable(interface.toInterface(IID_IInspectable));
}
