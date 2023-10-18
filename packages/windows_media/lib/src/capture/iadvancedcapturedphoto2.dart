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

/// @nodoc
const IID_IAdvancedCapturedPhoto2 = '{18cf6cd8-cffe-42d8-8104-017bb318f4a1}';

class IAdvancedCapturedPhoto2 extends IInspectable {
  IAdvancedCapturedPhoto2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAdvancedCapturedPhoto2Vtbl>().ref;

  final _IAdvancedCapturedPhoto2Vtbl _vtable;

  factory IAdvancedCapturedPhoto2.from(IInspectable interface) => interface
      .cast(IAdvancedCapturedPhoto2.fromPtr, IID_IAdvancedCapturedPhoto2);

  Rect? get frameBoundsRelativeToReferencePhoto {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameBoundsRelativeToReferencePhoto.asFunction<
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

    return IReference<Rect?>.fromPtr(value,
            referenceIid: '{80423f11-054f-5eac-afd3-63b6ce15e77b}')
        .value;
  }
}

final class _IAdvancedCapturedPhoto2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameBoundsRelativeToReferencePhoto;
}
