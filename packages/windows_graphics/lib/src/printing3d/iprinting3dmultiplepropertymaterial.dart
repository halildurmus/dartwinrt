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
const IID_IPrinting3DMultiplePropertyMaterial =
    '{25a6254b-c6e9-484d-a214-a25e5776ba62}';

class IPrinting3DMultiplePropertyMaterial extends IInspectable {
  IPrinting3DMultiplePropertyMaterial.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IPrinting3DMultiplePropertyMaterialVtbl>().ref;

  final _IPrinting3DMultiplePropertyMaterialVtbl _vtable;

  factory IPrinting3DMultiplePropertyMaterial.from(IInspectable interface) =>
      interface.cast(IPrinting3DMultiplePropertyMaterial.fromPtr,
          IID_IPrinting3DMultiplePropertyMaterial);

  IVector<int>? get materialIndices {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MaterialIndices.asFunction<
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
        iterableIid: '{421d4b91-b13b-5f37-ae54-b5249bd80539}',
        tIntType: IntType.uint32);
  }
}

final class _IPrinting3DMultiplePropertyMaterialVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MaterialIndices;
}
