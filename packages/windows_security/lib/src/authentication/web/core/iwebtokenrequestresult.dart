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
import 'webtokenrequeststatus.dart';
import 'webtokenresponse.dart';

/// @nodoc
const IID_IWebTokenRequestResult = '{c12a8305-d1f8-4483-8d54-38fe292784ff}';

class IWebTokenRequestResult extends IInspectable {
  IWebTokenRequestResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebTokenRequestResultVtbl>().ref;

  final _IWebTokenRequestResultVtbl _vtable;

  factory IWebTokenRequestResult.from(IInspectable interface) => interface.cast(
      IWebTokenRequestResult.fromPtr, IID_IWebTokenRequestResult);

  List<WebTokenResponse?>? get responseData {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ResponseData.asFunction<
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

    return IVectorView<WebTokenResponse?>.fromPtr(value,
            iterableIid: '{7e5bb7ec-bbd7-5575-9a61-f5815fa22a0e}',
            tObjectCreator: WebTokenResponse.fromPtr)
        .toList();
  }

  WebTokenRequestStatus get responseStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ResponseStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WebTokenRequestStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  WebProviderError? get responseError {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ResponseError.asFunction<
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

  Future<void> invalidateCacheAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.InvalidateCacheAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IWebTokenRequestResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ResponseData;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ResponseStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ResponseError;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      InvalidateCacheAsync;
}
