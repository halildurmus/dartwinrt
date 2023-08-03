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

/// @nodoc
const IID_ICoreAutomationConnectionBoundObjectProvider =
    '{0620bb64-9616-5593-be3a-eb8e6daeb3fa}';

/// Exposes the properties of a connection-bound object in a remote operation
/// for a UI Automation provider.
class ICoreAutomationConnectionBoundObjectProvider extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICoreAutomationConnectionBoundObjectProvider.fromPtr(super.ptr);

  factory ICoreAutomationConnectionBoundObjectProvider.from(
          IInspectable interface) =>
      ICoreAutomationConnectionBoundObjectProvider.fromPtr(interface
          .toInterface(IID_ICoreAutomationConnectionBoundObjectProvider));

  bool get isComThreadingRequired {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
