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
const IID_ILanguage3 = '{c6af3d10-641a-5ba4-bb43-5e12aed75954}';

class ILanguage3 extends IInspectable {
  ILanguage3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILanguage3Vtbl>().ref;

  final _ILanguage3Vtbl _vtable;

  factory ILanguage3.from(IInspectable interface) =>
      interface.cast(ILanguage3.fromPtr, IID_ILanguage3);

  String get abbreviatedName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AbbreviatedName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ILanguage3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AbbreviatedName;
}
