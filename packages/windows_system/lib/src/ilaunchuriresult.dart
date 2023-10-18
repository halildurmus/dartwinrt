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

import 'launchuristatus.dart';

/// @nodoc
const IID_ILaunchUriResult = '{ec27a8df-f6d5-45ca-913a-70a40c5c8221}';

class ILaunchUriResult extends IInspectable {
  ILaunchUriResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILaunchUriResultVtbl>().ref;

  final _ILaunchUriResultVtbl _vtable;

  factory ILaunchUriResult.from(IInspectable interface) =>
      interface.cast(ILaunchUriResult.fromPtr, IID_ILaunchUriResult);

  LaunchUriStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return LaunchUriStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  ValueSet? get result {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Result.asFunction<
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

    return ValueSet.fromPtr(value);
  }
}

final class _ILaunchUriResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Result;
}
