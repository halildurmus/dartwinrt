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
import 'package:windows_storage/windows_storage.dart';

import 'iwebaccount.dart';
import 'webaccountpicturesize.dart';
import 'webaccountprovider.dart';
import 'webaccountstate.dart';

/// @nodoc
const IID_IWebAccount2 = '{7b56d6f8-990b-4eb5-94a7-5621f3a8b824}';

class IWebAccount2 extends IInspectable implements IWebAccount {
  IWebAccount2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccount2Vtbl>().ref;

  final _IWebAccount2Vtbl _vtable;

  factory IWebAccount2.from(IInspectable interface) =>
      interface.cast(IWebAccount2.fromPtr, IID_IWebAccount2);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  Map<String, String>? get properties {
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

    return IMapView<String, String>.fromPtr(value,
            iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}')
        .toMap();
  }

  Future<IRandomAccessStream?> getPictureAsync(
      WebAccountPictureSize desizedSize) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetPictureAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desizedSize,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, desizedSize.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        asyncInfo,
        tResultObjectCreator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> signOutAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SignOutAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> signOutWithClientIdAsync(String clientId) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SignOutWithClientIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, int clientId,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, clientId.toHString(), asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  late final _iWebAccount = IWebAccount.from(this);

  @override
  WebAccountProvider? get webAccountProvider => _iWebAccount.webAccountProvider;

  @override
  String get userName => _iWebAccount.userName;

  @override
  WebAccountState get state => _iWebAccount.state;
}

final class _IWebAccount2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 desizedSize,
              Pointer<COMObject> asyncInfo)>> GetPictureAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      SignOutAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr clientId,
              Pointer<COMObject> asyncInfo)>> SignOutWithClientIdAsync;
}
