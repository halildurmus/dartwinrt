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
const IID_IQueryOptionsWithProviderFilter =
    '{5b9d1026-15c4-44dd-b89a-47a59b7d7c4f}';

class IQueryOptionsWithProviderFilter extends IInspectable {
  IQueryOptionsWithProviderFilter.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IQueryOptionsWithProviderFilterVtbl>().ref;

  final _IQueryOptionsWithProviderFilterVtbl _vtable;

  factory IQueryOptionsWithProviderFilter.from(IInspectable interface) =>
      interface.cast(IQueryOptionsWithProviderFilter.fromPtr,
          IID_IQueryOptionsWithProviderFilter);

  IVector<String>? get storageProviderIdFilter {
    final value = calloc<COMObject>();

    final hr = _vtable.get_StorageProviderIdFilter.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVector.fromPtr(value,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }
}

final class _IQueryOptionsWithProviderFilterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_StorageProviderIdFilter;
}
