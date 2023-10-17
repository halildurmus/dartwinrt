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

import 'webprovidererror.dart';

/// @nodoc
const IID_IWebProviderErrorFactory = '{e3c40a2d-89ef-4e37-847f-a8b9d5a32910}';

class IWebProviderErrorFactory extends IInspectable {
  IWebProviderErrorFactory.fromPtr(super.ptr);

  factory IWebProviderErrorFactory.from(IInspectable interface) => interface
      .cast(IWebProviderErrorFactory.fromPtr, IID_IWebProviderErrorFactory);

  WebProviderError create(int errorCode, String errorMessage) {
    final webProviderError = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 errorCode,
                            IntPtr errorMessage,
                            Pointer<COMObject> webProviderError)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int errorCode,
                    int errorMessage, Pointer<COMObject> webProviderError)>()(
        lpVtbl, errorCode, errorMessage.toHString(), webProviderError);

    if (FAILED(hr)) {
      free(webProviderError);
      throwWindowsException(hr);
    }

    return WebProviderError.fromPtr(webProviderError);
  }
}
