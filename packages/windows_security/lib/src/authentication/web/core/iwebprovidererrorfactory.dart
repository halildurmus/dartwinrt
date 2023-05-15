// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'webprovidererror.dart';

/// @nodoc
const IID_IWebProviderErrorFactory = '{e3c40a2d-89ef-4e37-847f-a8b9d5a32910}';

/// {@category interface}
class IWebProviderErrorFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IWebProviderErrorFactory.fromPtr(super.ptr);

  factory IWebProviderErrorFactory.from(IInspectable interface) =>
      IWebProviderErrorFactory.fromPtr(
          interface.toInterface(IID_IWebProviderErrorFactory));

  WebProviderError create(int errorCode, String errorMessage) {
    final retValuePtr = calloc<COMObject>();
    final errorMessageHString = errorMessage.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 errorCode,
                            IntPtr errorMessage,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int errorCode,
                    int errorMessage, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, errorCode, errorMessageHString, retValuePtr);

    WindowsDeleteString(errorMessageHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return WebProviderError.fromPtr(retValuePtr);
  }
}
