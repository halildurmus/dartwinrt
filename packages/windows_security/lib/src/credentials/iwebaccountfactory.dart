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

import 'webaccount.dart';
import 'webaccountprovider.dart';
import 'webaccountstate.dart';

/// @nodoc
const IID_IWebAccountFactory = '{ac9afb39-1de9-4e92-b78f-0581a87f6e5c}';

class IWebAccountFactory extends IInspectable {
  IWebAccountFactory.fromPtr(super.ptr);

  factory IWebAccountFactory.from(IInspectable interface) =>
      interface.cast(IWebAccountFactory.fromPtr, IID_IWebAccountFactory);

  WebAccount createWebAccount(WebAccountProvider? webAccountProvider,
      String userName, WebAccountState state) {
    final instance = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer webAccountProvider,
                            IntPtr userName,
                            Int32 state,
                            Pointer<COMObject> instance)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer webAccountProvider,
                    int userName,
                    int state,
                    Pointer<COMObject> instance)>()(lpVtbl,
        webAccountProvider.lpVtbl, userName.toHString(), state.value, instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return WebAccount.fromPtr(instance);
  }
}
