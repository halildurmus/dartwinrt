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
import 'webtokenrequestprompttype.dart';

/// @nodoc
const IID_IWebTokenRequest = '{b77b4d68-adcb-4673-b364-0cf7b35caf97}';

class IWebTokenRequest extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IWebTokenRequest.fromPtr(super.ptr);

  factory IWebTokenRequest.from(IInspectable interface) =>
      interface.cast(IWebTokenRequest.fromPtr, IID_IWebTokenRequest);

  WebAccountProvider? get webAccountProvider {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return WebAccountProvider.fromPtr(value);
  }

  String get scope {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get clientId {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  WebTokenRequestPromptType get promptType {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return WebTokenRequestPromptType.from(value.value);
    } finally {
      free(value);
    }
  }

  IMap<String, String>? get properties {
    final requestProperties = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            Pointer<COMObject> requestProperties)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl,
                    Pointer<COMObject> requestProperties)>()(
        lpVtbl, requestProperties);

    if (FAILED(hr)) {
      free(requestProperties);
      throwWindowsException(hr);
    }

    if (requestProperties.isNull) {
      free(requestProperties);
      return null;
    }

    return IMap.fromPtr(requestProperties,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
  }
}
