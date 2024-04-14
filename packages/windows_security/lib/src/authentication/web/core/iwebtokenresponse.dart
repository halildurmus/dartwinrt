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

import '../../../credentials/webaccount.dart';
import 'webprovidererror.dart';

/// @nodoc
const IID_IWebTokenResponse = '{67a7c5ca-83f6-44c6-a3b1-0eb69e41fa8a}';

class IWebTokenResponse extends IInspectable {
  IWebTokenResponse.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebTokenResponseVtbl>().ref;

  final _IWebTokenResponseVtbl _vtable;

  factory IWebTokenResponse.from(IInspectable interface) =>
      interface.cast(IWebTokenResponse.fromPtr, IID_IWebTokenResponse);

  String get token {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Token.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  WebProviderError? get providerError {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ProviderError.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return WebProviderError.fromPtr(value);
  }

  WebAccount? get webAccount {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WebAccount.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return WebAccount.fromPtr(value);
  }

  IMap<String, String>? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IMap.fromPtr(value,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
  }
}

final class _IWebTokenResponseVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Token;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ProviderError;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WebAccount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
