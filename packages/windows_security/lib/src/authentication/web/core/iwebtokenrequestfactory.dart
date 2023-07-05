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

import '../../../credentials/webaccountprovider.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestprompttype.dart';

/// @nodoc
const IID_IWebTokenRequestFactory = '{6cf2141c-0ff0-4c67-b84f-99ddbe4a72c9}';

class IWebTokenRequestFactory extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IWebTokenRequestFactory.fromPtr(super.ptr);

  factory IWebTokenRequestFactory.from(IInspectable interface) =>
      IWebTokenRequestFactory.fromPtr(
          interface.toInterface(IID_IWebTokenRequestFactory));

  WebTokenRequest create(
      WebAccountProvider provider, String scope, String clientId) {
    final webTokenRequest = calloc<COMObject>();
    final scopeHString = scope.toHString();
    final clientIdHString = clientId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr scope,
                            IntPtr clientId,
                            Pointer<COMObject> webTokenRequest)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer provider,
                    int scope,
                    int clientId,
                    Pointer<COMObject> webTokenRequest)>()(
        ptr.ref.lpVtbl,
        provider.ptr.ref.lpVtbl,
        scopeHString,
        clientIdHString,
        webTokenRequest);

    WindowsDeleteString(scopeHString);
    WindowsDeleteString(clientIdHString);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throw WindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithPromptType(WebAccountProvider provider,
      String scope, String clientId, WebTokenRequestPromptType promptType) {
    final webTokenRequest = calloc<COMObject>();
    final scopeHString = scope.toHString();
    final clientIdHString = clientId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr scope,
                            IntPtr clientId,
                            Int32 promptType,
                            Pointer<COMObject> webTokenRequest)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer provider,
                    int scope,
                    int clientId,
                    int promptType,
                    Pointer<COMObject> webTokenRequest)>()(
        ptr.ref.lpVtbl,
        provider.ptr.ref.lpVtbl,
        scopeHString,
        clientIdHString,
        promptType.value,
        webTokenRequest);

    WindowsDeleteString(scopeHString);
    WindowsDeleteString(clientIdHString);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throw WindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithProvider(WebAccountProvider provider) {
    final webTokenRequest = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            Pointer<COMObject> webTokenRequest)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    Pointer<COMObject> webTokenRequest)>()(
        ptr.ref.lpVtbl, provider.ptr.ref.lpVtbl, webTokenRequest);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throw WindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithScope(WebAccountProvider provider, String scope) {
    final webTokenRequest = calloc<COMObject>();
    final scopeHString = scope.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr scope,
                            Pointer<COMObject> webTokenRequest)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    int scope, Pointer<COMObject> webTokenRequest)>()(
        ptr.ref.lpVtbl, provider.ptr.ref.lpVtbl, scopeHString, webTokenRequest);

    WindowsDeleteString(scopeHString);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throw WindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }
}
