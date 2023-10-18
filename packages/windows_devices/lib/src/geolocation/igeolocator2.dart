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
const IID_IGeolocator2 = '{d1b42e6d-8891-43b4-ad36-27c6fe9a97b1}';

class IGeolocator2 extends IInspectable {
  IGeolocator2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeolocator2Vtbl>().ref;

  final _IGeolocator2Vtbl _vtable;

  factory IGeolocator2.from(IInspectable interface) =>
      interface.cast(IGeolocator2.fromPtr, IID_IGeolocator2);

  void allowFallbackToConsentlessPositions() {
    final hr = _vtable.AllowFallbackToConsentlessPositions.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IGeolocator2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      AllowFallbackToConsentlessPositions;
}
