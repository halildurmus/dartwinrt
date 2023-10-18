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

import 'videoencodingproperties.dart';

/// @nodoc
const IID_IVideoEncodingPropertiesStatics2 =
    '{cf1ebd5d-49fe-4d00-b59a-cfa4dfc51944}';

class IVideoEncodingPropertiesStatics2 extends IInspectable {
  IVideoEncodingPropertiesStatics2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IVideoEncodingPropertiesStatics2Vtbl>().ref;

  final _IVideoEncodingPropertiesStatics2Vtbl _vtable;

  factory IVideoEncodingPropertiesStatics2.from(IInspectable interface) =>
      interface.cast(IVideoEncodingPropertiesStatics2.fromPtr,
          IID_IVideoEncodingPropertiesStatics2);

  VideoEncodingProperties? createHevc() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateHevc.asFunction<
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

    return VideoEncodingProperties.fromPtr(value);
  }
}

final class _IVideoEncodingPropertiesStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateHevc;
}
