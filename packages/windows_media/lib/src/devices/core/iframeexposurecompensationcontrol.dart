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
const IID_IFrameExposureCompensationControl =
    '{e95896c9-f7f9-48ca-8591-a26531cb1578}';

class IFrameExposureCompensationControl extends IInspectable {
  IFrameExposureCompensationControl.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IFrameExposureCompensationControlVtbl>().ref;

  final _IFrameExposureCompensationControlVtbl _vtable;

  factory IFrameExposureCompensationControl.from(IInspectable interface) =>
      interface.cast(IFrameExposureCompensationControl.fromPtr,
          IID_IFrameExposureCompensationControl);

  double? get value {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{719cc2ba-3e76-5def-9f1a-38d85a145ea8}')
        .value;
  }

  set value(double? value) {
    final hr = _vtable.put_Value.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference(DoubleType.float).lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFrameExposureCompensationControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Value;
}
