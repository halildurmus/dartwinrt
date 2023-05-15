// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'iwebaccountprovider.dart';

/// @nodoc
const IID_IWebAccountProvider2 = '{4a01eb05-4e42-41d4-b518-e008a5163614}';

/// {@category interface}
class IWebAccountProvider2 extends IInspectable implements IWebAccountProvider {
  // vtable begins at 6, is 2 entries long.
  IWebAccountProvider2.fromPtr(super.ptr);

  factory IWebAccountProvider2.from(IInspectable interface) =>
      IWebAccountProvider2.fromPtr(
          interface.toInterface(IID_IWebAccountProvider2));

  String get displayPurpose {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get authority {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @Deprecated(
      'IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.')
  @override
  Uri? get iconUri => _iWebAccountProvider.iconUri;
}
