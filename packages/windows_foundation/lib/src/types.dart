// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

/// An alias for a Pointer to COM vtable.
typedef LPVTBL = Pointer<Pointer<IntPtr>>;
