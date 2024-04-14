// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
const IID_IWlanConnectionProfileDetails =
    '{562098cb-b35a-4bf1-a884-b7557e88ff86}';

class IWlanConnectionProfileDetails extends IInspectable {
  IWlanConnectionProfileDetails.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWlanConnectionProfileDetailsVtbl>().ref;

  final _IWlanConnectionProfileDetailsVtbl _vtable;

  factory IWlanConnectionProfileDetails.from(IInspectable interface) =>
      interface.cast(IWlanConnectionProfileDetails.fromPtr,
          IID_IWlanConnectionProfileDetails);

  String getConnectedSsid() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetConnectedSsid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IWlanConnectionProfileDetailsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetConnectedSsid;
}
