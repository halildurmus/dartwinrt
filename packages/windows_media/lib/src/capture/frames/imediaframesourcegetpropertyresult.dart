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

import 'mediaframesourcegetpropertystatus.dart';

/// @nodoc
const IID_IMediaFrameSourceGetPropertyResult =
    '{088616c2-3a64-4bd5-bd2b-e7c898d2f37a}';

class IMediaFrameSourceGetPropertyResult extends IInspectable {
  IMediaFrameSourceGetPropertyResult.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IMediaFrameSourceGetPropertyResultVtbl>().ref;

  final _IMediaFrameSourceGetPropertyResultVtbl _vtable;

  factory IMediaFrameSourceGetPropertyResult.from(IInspectable interface) =>
      interface.cast(IMediaFrameSourceGetPropertyResult.fromPtr,
          IID_IMediaFrameSourceGetPropertyResult);

  MediaFrameSourceGetPropertyStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaFrameSourceGetPropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  Object? get value {
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

    return IPropertyValue.fromPtr(value).value;
  }
}

final class _IMediaFrameSourceGetPropertyResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
}
