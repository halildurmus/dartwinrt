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

import 'iwebaccountprovider.dart';

/// @nodoc
const IID_IWebAccountProvider2 = '{4a01eb05-4e42-41d4-b518-e008a5163614}';

class IWebAccountProvider2 extends IInspectable implements IWebAccountProvider {
  IWebAccountProvider2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountProvider2Vtbl>().ref;

  final _IWebAccountProvider2Vtbl _vtable;

  factory IWebAccountProvider2.from(IInspectable interface) =>
      interface.cast(IWebAccountProvider2.fromPtr, IID_IWebAccountProvider2);

  String get displayPurpose {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayPurpose.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get authority {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Authority.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @Deprecated(
      "IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
  @override
  Uri? get iconUri => _iWebAccountProvider.iconUri;
}

final class _IWebAccountProvider2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayPurpose;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Authority;
}
