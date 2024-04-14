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

import 'networkadapter.dart';

/// @nodoc
const IID_IIPInformation = '{d85145e0-138f-47d7-9b3a-36bb488cef33}';

class IIPInformation extends IInspectable {
  IIPInformation.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IIPInformationVtbl>().ref;

  final _IIPInformationVtbl _vtable;

  factory IIPInformation.from(IInspectable interface) =>
      interface.cast(IIPInformation.fromPtr, IID_IIPInformation);

  NetworkAdapter? get networkAdapter {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NetworkAdapter.asFunction<
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

    return NetworkAdapter.fromPtr(value);
  }

  int? get prefixLength {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PrefixLength.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{e5198cc8-2873-55f5-b0a1-84ff9e4aad62}')
        .value;
  }
}

final class _IIPInformationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NetworkAdapter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PrefixLength;
}
