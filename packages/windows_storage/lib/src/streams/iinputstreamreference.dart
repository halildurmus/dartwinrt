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

import 'iinputstream.dart';

/// @nodoc
const IID_IInputStreamReference = '{43929d18-5ec9-4b5a-919c-4205b0c804b6}';

class IInputStreamReference extends IInspectable {
  IInputStreamReference.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IInputStreamReferenceVtbl>().ref;

  final _IInputStreamReferenceVtbl _vtable;

  factory IInputStreamReference.from(IInspectable interface) =>
      interface.cast(IInputStreamReference.fromPtr, IID_IInputStreamReference);

  Future<IInputStream?> openSequentialReadAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.OpenSequentialReadAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IInputStream?>.fromPtr(operation,
        tResultObjectCreator: IInputStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IInputStreamReferenceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      OpenSequentialReadAsync;
}
