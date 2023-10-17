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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';

/// @nodoc
const IID_IUriEscapeStatics = '{c1d432ba-c824-4452-a7fd-512bc3bbe9a1}';

class IUriEscapeStatics extends IInspectable {
  IUriEscapeStatics.fromPtr(super.ptr);

  factory IUriEscapeStatics.from(IInspectable interface) =>
      interface.cast(IUriEscapeStatics.fromPtr, IID_IUriEscapeStatics);

  String unescapeComponent(String toUnescape) {
    final value = calloc<IntPtr>();

    try {
      final hr =
          vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(VTablePointer lpVtbl,
                                  IntPtr toUnescape, Pointer<IntPtr> value)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int toUnescape,
                          Pointer<IntPtr> value)>()(
              lpVtbl, toUnescape.toHString(), value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String escapeComponent(String toEscape) {
    final value = calloc<IntPtr>();

    try {
      final hr =
          vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(VTablePointer lpVtbl,
                                  IntPtr toEscape, Pointer<IntPtr> value)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int toEscape,
                          Pointer<IntPtr> value)>()(
              lpVtbl, toEscape.toHString(), value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}
