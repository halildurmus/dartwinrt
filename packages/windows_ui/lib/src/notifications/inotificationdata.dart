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
const IID_INotificationData = '{9ffd2312-9d6a-4aaf-b6ac-ff17f0c1f280}';

class INotificationData extends IInspectable {
  INotificationData.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INotificationDataVtbl>().ref;

  final _INotificationDataVtbl _vtable;

  factory INotificationData.from(IInspectable interface) =>
      interface.cast(INotificationData.fromPtr, IID_INotificationData);

  IMap<String, String>? get values {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Values.asFunction<
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

    return IMap.fromPtr(value,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
  }

  int get sequenceNumber {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_SequenceNumber.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set sequenceNumber(int value) {
    final hr = _vtable.put_SequenceNumber
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _INotificationDataVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Values;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_SequenceNumber;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_SequenceNumber;
}
