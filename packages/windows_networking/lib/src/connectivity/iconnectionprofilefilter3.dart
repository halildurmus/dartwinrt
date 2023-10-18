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
const IID_IConnectionProfileFilter3 = '{0aaa09c0-5014-447c-8809-aee4cb0af94a}';

class IConnectionProfileFilter3 extends IInspectable {
  IConnectionProfileFilter3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IConnectionProfileFilter3Vtbl>().ref;

  final _IConnectionProfileFilter3Vtbl _vtable;

  factory IConnectionProfileFilter3.from(IInspectable interface) => interface
      .cast(IConnectionProfileFilter3.fromPtr, IID_IConnectionProfileFilter3);

  set purposeGuid(Guid? value) {
    final hr = _vtable.put_PurposeGuid.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Guid? get purposeGuid {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PurposeGuid.asFunction<
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

    return IReference<Guid?>.fromPtr(value,
            referenceIid: '{7d50f649-632c-51f9-849a-ee49428933ea}')
        .value;
  }
}

final class _IConnectionProfileFilter3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_PurposeGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PurposeGuid;
}
