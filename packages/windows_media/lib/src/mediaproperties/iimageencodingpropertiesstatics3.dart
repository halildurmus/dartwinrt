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

import 'imageencodingproperties.dart';

/// @nodoc
const IID_IImageEncodingPropertiesStatics3 =
    '{48f4814d-a2ff-48dc-8ea0-e90680663656}';

class IImageEncodingPropertiesStatics3 extends IInspectable {
  IImageEncodingPropertiesStatics3.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IImageEncodingPropertiesStatics3Vtbl>().ref;

  final _IImageEncodingPropertiesStatics3Vtbl _vtable;

  factory IImageEncodingPropertiesStatics3.from(IInspectable interface) =>
      interface.cast(IImageEncodingPropertiesStatics3.fromPtr,
          IID_IImageEncodingPropertiesStatics3);

  ImageEncodingProperties? createHeif() {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateHeif.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ImageEncodingProperties.fromPtr(result);
  }
}

final class _IImageEncodingPropertiesStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> CreateHeif;
}
