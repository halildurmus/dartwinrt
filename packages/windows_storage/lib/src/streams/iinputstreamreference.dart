// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'iinputstream.dart';

/// @nodoc
const IID_IInputStreamReference = '{43929d18-5ec9-4b5a-919c-4205b0c804b6}';

/// {@category interface}
class IInputStreamReference extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IInputStreamReference.fromPtr(super.ptr);

  factory IInputStreamReference.from(IInspectable interface) =>
      IInputStreamReference.fromPtr(
          interface.toInterface(IID_IInputStreamReference));

  Future<IInputStream?> openSequentialReadAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<IInputStream?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IInputStream?>.fromPtr(retValuePtr,
        creator: IInputStream.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
