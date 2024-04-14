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
import 'findallwebaccountsstatus.dart';
import 'webprovidererror.dart';

/// @nodoc
const IID_IFindAllAccountsResult = '{a5812b5d-b72e-420c-86ab-aac0d7b7261f}';

class IFindAllAccountsResult extends IInspectable {
  IFindAllAccountsResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFindAllAccountsResultVtbl>().ref;

  final _IFindAllAccountsResultVtbl _vtable;

  factory IFindAllAccountsResult.from(IInspectable interface) => interface.cast(
      IFindAllAccountsResult.fromPtr, IID_IFindAllAccountsResult);

  List<WebAccount?>? get accounts {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Accounts.asFunction<
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

    return IVectorView<WebAccount?>.fromPtr(value,
            iterableIid: '{cb15d439-a910-542a-89ed-7cfe67848a83}',
            tObjectCreator: WebAccount.fromPtr)
        .toList();
  }

  FindAllWebAccountsStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return FindAllWebAccountsStatus.from(value.value);
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
}

final class _IFindAllAccountsResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Accounts;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ProviderError;
}
