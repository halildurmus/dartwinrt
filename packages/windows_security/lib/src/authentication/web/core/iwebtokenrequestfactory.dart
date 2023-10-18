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

import '../../../credentials/webaccountprovider.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestprompttype.dart';

/// @nodoc
const IID_IWebTokenRequestFactory = '{6cf2141c-0ff0-4c67-b84f-99ddbe4a72c9}';

class IWebTokenRequestFactory extends IInspectable {
  IWebTokenRequestFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebTokenRequestFactoryVtbl>().ref;

  final _IWebTokenRequestFactoryVtbl _vtable;

  factory IWebTokenRequestFactory.from(IInspectable interface) => interface
      .cast(IWebTokenRequestFactory.fromPtr, IID_IWebTokenRequestFactory);

  WebTokenRequest create(
      WebAccountProvider? provider, String scope, String clientId) {
    final webTokenRequest = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                int scope, int clientId, Pointer<COMObject> webTokenRequest)>()(
        lpVtbl,
        provider.lpVtbl,
        scope.toHString(),
        clientId.toHString(),
        webTokenRequest);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throwWindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithPromptType(WebAccountProvider? provider,
      String scope, String clientId, WebTokenRequestPromptType promptType) {
    final webTokenRequest = calloc<COMObject>();

    final hr = _vtable.CreateWithPromptType.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer provider,
                int scope,
                int clientId,
                int promptType,
                Pointer<COMObject> webTokenRequest)>()(
        lpVtbl,
        provider.lpVtbl,
        scope.toHString(),
        clientId.toHString(),
        promptType.value,
        webTokenRequest);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throwWindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithProvider(WebAccountProvider? provider) {
    final webTokenRequest = calloc<COMObject>();

    final hr = _vtable.CreateWithProvider.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                Pointer<COMObject> webTokenRequest)>()(
        lpVtbl, provider.lpVtbl, webTokenRequest);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throwWindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }

  WebTokenRequest createWithScope(WebAccountProvider? provider, String scope) {
    final webTokenRequest = calloc<COMObject>();

    final hr = _vtable.CreateWithScope.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer provider,
                int scope, Pointer<COMObject> webTokenRequest)>()(
        lpVtbl, provider.lpVtbl, scope.toHString(), webTokenRequest);

    if (FAILED(hr)) {
      free(webTokenRequest);
      throwWindowsException(hr);
    }

    return WebTokenRequest.fromPtr(webTokenRequest);
  }
}

final class _IWebTokenRequestFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer provider,
              IntPtr scope,
              IntPtr clientId,
              Pointer<COMObject> webTokenRequest)>> Create;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer provider,
              IntPtr scope,
              IntPtr clientId,
              Int32 promptType,
              Pointer<COMObject> webTokenRequest)>> CreateWithPromptType;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer provider,
              Pointer<COMObject> webTokenRequest)>> CreateWithProvider;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer provider,
              IntPtr scope,
              Pointer<COMObject> webTokenRequest)>> CreateWithScope;
}
