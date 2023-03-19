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

import 'irandomaccessstreamwithcontenttype.dart';

/// @nodoc
const IID_IRandomAccessStreamReference =
    '{33ee3134-1dd6-4e3a-8067-d1c162e8642b}';

/// {@category interface}
class IRandomAccessStreamReference extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IRandomAccessStreamReference.fromPtr(super.ptr);

  factory IRandomAccessStreamReference.from(IInspectable interface) =>
      IRandomAccessStreamReference.fromPtr(
          interface.toInterface(IID_IRandomAccessStreamReference));

  Future<IRandomAccessStreamWithContentType?> openReadAsync() {
    final retValuePtr = calloc<COMObject>();

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

    final asyncOperation =
        IAsyncOperation<IRandomAccessStreamWithContentType?>.fromPtr(
            retValuePtr,
            creator: IRandomAccessStreamWithContentType.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
