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

import 'webaccountprovider.dart';

/// @nodoc
const IID_IWebAccountProviderFactory = '{1d767df1-e1e1-4b9a-a774-5c7c7e3bf371}';

class IWebAccountProviderFactory extends IInspectable {
  IWebAccountProviderFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountProviderFactoryVtbl>().ref;

  final _IWebAccountProviderFactoryVtbl _vtable;

  factory IWebAccountProviderFactory.from(IInspectable interface) => interface
      .cast(IWebAccountProviderFactory.fromPtr, IID_IWebAccountProviderFactory);

  WebAccountProvider createWebAccountProvider(
      String id, String displayName, Uri? iconUri) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateWebAccountProvider.asFunction<
            int Function(VTablePointer lpVtbl, int id, int displayName,
                VTablePointer iconUri, Pointer<COMObject> instance)>()(
        lpVtbl,
        id.toHString(),
        displayName.toHString(),
        iconUri?.toWinRTUri().lpVtbl ?? nullptr,
        instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return WebAccountProvider.fromPtr(instance);
  }
}

final class _IWebAccountProviderFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr id,
              IntPtr displayName,
              VTablePointer iconUri,
              Pointer<COMObject> instance)>> CreateWebAccountProvider;
}
