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

import '../../../credentials/webaccount.dart';
import 'webprovidererror.dart';
import 'webtokenresponse.dart';

/// @nodoc
const IID_IWebTokenResponseFactory = '{ab6bf7f8-5450-4ef6-97f7-052b0431c0f0}';

class IWebTokenResponseFactory extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IWebTokenResponseFactory.fromPtr(super.ptr);

  factory IWebTokenResponseFactory.from(IInspectable interface) =>
      IWebTokenResponseFactory.fromPtr(
          interface.toInterface(IID_IWebTokenResponseFactory));

  WebTokenResponse createWithToken(String token) {
    final webTokenResponse = calloc<COMObject>();
    final tokenHString = token.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr token,
                            Pointer<COMObject> webTokenResponse)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int token,
                    Pointer<COMObject> webTokenResponse)>()(
        ptr.ref.lpVtbl, tokenHString, webTokenResponse);

    WindowsDeleteString(tokenHString);

    if (FAILED(hr)) {
      free(webTokenResponse);
      throwWindowsException(hr);
    }

    return WebTokenResponse.fromPtr(webTokenResponse);
  }

  WebTokenResponse createWithTokenAndAccount(
      String token, WebAccount? webAccount) {
    final webTokenResponse = calloc<COMObject>();
    final tokenHString = token.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr token,
                            VTablePointer webAccount,
                            Pointer<COMObject> webTokenResponse)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int token,
                    VTablePointer webAccount,
                    Pointer<COMObject> webTokenResponse)>()(
        ptr.ref.lpVtbl,
        tokenHString,
        webAccount == null ? nullptr : webAccount.ptr.ref.lpVtbl,
        webTokenResponse);

    WindowsDeleteString(tokenHString);

    if (FAILED(hr)) {
      free(webTokenResponse);
      throwWindowsException(hr);
    }

    return WebTokenResponse.fromPtr(webTokenResponse);
  }

  WebTokenResponse createWithTokenAccountAndError(
      String token, WebAccount? webAccount, WebProviderError? error) {
    final webTokenResponse = calloc<COMObject>();
    final tokenHString = token.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr token,
                            VTablePointer webAccount,
                            VTablePointer error,
                            Pointer<COMObject> webTokenResponse)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int token,
                    VTablePointer webAccount,
                    VTablePointer error,
                    Pointer<COMObject> webTokenResponse)>()(
        ptr.ref.lpVtbl,
        tokenHString,
        webAccount == null ? nullptr : webAccount.ptr.ref.lpVtbl,
        error == null ? nullptr : error.ptr.ref.lpVtbl,
        webTokenResponse);

    WindowsDeleteString(tokenHString);

    if (FAILED(hr)) {
      free(webTokenResponse);
      throwWindowsException(hr);
    }

    return WebTokenResponse.fromPtr(webTokenResponse);
  }
}
