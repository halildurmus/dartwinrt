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

import 'ibuffer.dart';
import 'inputstreamoptions.dart';

/// @nodoc
const IID_IInputStream = '{905a0fe2-bc53-11df-8c49-001e4fc686da}';

class IInputStream extends IInspectable implements IClosable {
  IInputStream.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IInputStreamVtbl>().ref;

  final _IInputStreamVtbl _vtable;

  factory IInputStream.from(IInspectable interface) =>
      interface.cast(IInputStream.fromPtr, IID_IInputStream);

  Pointer<COMObject> readAsync(
      IBuffer? buffer, int count, InputStreamOptions options) {
    final operation = calloc<COMObject>();

    final hr = _vtable.ReadAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer, int count,
                int options, Pointer<COMObject> operation)>()(
        lpVtbl, buffer.lpVtbl, count, options.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return operation;
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IInputStreamVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer buffer,
              Uint32 count,
              Uint32 options,
              Pointer<COMObject> operation)>> ReadAsync;
}
