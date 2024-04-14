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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IGuidHelperStatics = '{59c7966b-ae52-5283-ad7f-a1b9e9678add}';

class IGuidHelperStatics extends IInspectable {
  IGuidHelperStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGuidHelperStaticsVtbl>().ref;

  final _IGuidHelperStaticsVtbl _vtable;

  factory IGuidHelperStatics.from(IInspectable interface) =>
      interface.cast(IGuidHelperStatics.fromPtr, IID_IGuidHelperStatics);

  Guid createNewGuid() {
    final result = calloc<GUID>();

    try {
      final hr = _vtable.CreateNewGuid.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartGuid();
    } finally {
      free(result);
    }
  }

  Guid get empty {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_Empty.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  bool equals(Guid target, Guid value) {
    final result = calloc<Bool>();

    try {
      final targetNativeStructPtr = target.toNativeGUID();
      final valueNativeStructPtr = value.toNativeGUID();

      final hr = _vtable.Equals.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> target,
                  Pointer<GUID> value, Pointer<Bool> result)>()(
          lpVtbl, targetNativeStructPtr, valueNativeStructPtr, result);

      free(targetNativeStructPtr);
      free(valueNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _IGuidHelperStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> result)>>
      CreateNewGuid;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_Empty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> target,
              Pointer<GUID> value, Pointer<Bool> result)>> Equals;
}
