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
import 'memorybuffer.dart';

/// @nodoc
const IID_IMemoryBufferFactory = '{fbc4dd2b-245b-11e4-af98-689423260cf8}';

class IMemoryBufferFactory extends IInspectable {
  IMemoryBufferFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMemoryBufferFactoryVtbl>().ref;

  final _IMemoryBufferFactoryVtbl _vtable;

  factory IMemoryBufferFactory.from(IInspectable interface) =>
      interface.cast(IMemoryBufferFactory.fromPtr, IID_IMemoryBufferFactory);

  MemoryBuffer create(int capacity) {
    final value = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
        int Function(VTablePointer lpVtbl, int capacity,
            Pointer<COMObject> value)>()(lpVtbl, capacity, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return MemoryBuffer.fromPtr(value);
  }
}

final class _IMemoryBufferFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 capacity,
              Pointer<COMObject> value)>> Create;
}
