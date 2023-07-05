// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../parameter.dart';

/// Parameter projection for WinRT delegate parameters.
final class DelegateParameterProjection extends ParameterProjection {
  DelegateParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get creator => identifier;

  @override
  String get into => '$identifier.ref.lpVtbl';

  // No deallocation is needed as NativeFinalizer will handle it.
  @override
  bool get needsDeallocation => false;
}
