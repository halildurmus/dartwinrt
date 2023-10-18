// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_ILearningModelSessionOptions2 =
    '{6fcd1dc4-175f-5bd2-8de5-2f2006a25adf}';

class ILearningModelSessionOptions2 extends IInspectable {
  ILearningModelSessionOptions2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelSessionOptions2Vtbl>().ref;

  final _ILearningModelSessionOptions2Vtbl _vtable;

  factory ILearningModelSessionOptions2.from(IInspectable interface) =>
      interface.cast(ILearningModelSessionOptions2.fromPtr,
          IID_ILearningModelSessionOptions2);

  bool get closeModelOnSessionCreation {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CloseModelOnSessionCreation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set closeModelOnSessionCreation(bool value) {
    final hr = _vtable.put_CloseModelOnSessionCreation
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILearningModelSessionOptions2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CloseModelOnSessionCreation;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_CloseModelOnSessionCreation;
}
