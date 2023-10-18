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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'iclosable.dart';

/// @nodoc
const IID_IMemoryBufferReference = '{fbc4dd29-245b-11e4-af98-689423260cf8}';

/// Represents a reference to an IMemoryBuffer object.
class IMemoryBufferReference extends IInspectable implements IClosable {
  IMemoryBufferReference.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMemoryBufferReferenceVtbl>().ref;

  final _IMemoryBufferReferenceVtbl _vtable;

  factory IMemoryBufferReference.from(IInspectable interface) => interface.cast(
      IMemoryBufferReference.fromPtr, IID_IMemoryBufferReference);

  int get capacity {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Capacity.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int add_Closed(Pointer<COMObject> handler) {
    final cookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Closed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>()(lpVtbl, handler.ref.lpVtbl, cookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return cookie.value;
    } finally {
      free(cookie);
    }
  }

  void remove_Closed(int cookie) {
    final hr = _vtable.remove_Closed
            .asFunction<int Function(VTablePointer lpVtbl, int cookie)>()(
        lpVtbl, cookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMemoryBufferReferenceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Capacity;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> cookie)>> add_Closed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr cookie)>>
      remove_Closed;
}
