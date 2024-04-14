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

import 'basicgeoposition.dart';

/// @nodoc
const IID_IGeolocatorStatics2 = '{993011a2-fa1c-4631-a71d-0dbeb1250d9c}';

class IGeolocatorStatics2 extends IInspectable {
  IGeolocatorStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeolocatorStatics2Vtbl>().ref;

  final _IGeolocatorStatics2Vtbl _vtable;

  factory IGeolocatorStatics2.from(IInspectable interface) =>
      interface.cast(IGeolocatorStatics2.fromPtr, IID_IGeolocatorStatics2);

  bool get isDefaultGeopositionRecommended {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsDefaultGeopositionRecommended.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set defaultGeoposition(BasicGeoposition? value) {
    final hr = _vtable.put_DefaultGeoposition.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BasicGeoposition? get defaultGeoposition {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DefaultGeoposition.asFunction<
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

    return IReference<BasicGeoposition?>.fromPtr(value,
            referenceIid: '{e4d5dda6-f57c-57cc-b67f-2939a901dabe}')
        .value;
  }
}

final class _IGeolocatorStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsDefaultGeopositionRecommended;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_DefaultGeoposition;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DefaultGeoposition;
}
