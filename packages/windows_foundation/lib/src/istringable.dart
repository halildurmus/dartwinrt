// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../../internal.dart';
import 'callbacks.dart';
import 'helpers.dart';

/// @nodoc
const IID_IStringable = '{96369f54-8eb6-48f0-abce-c1b211e627c3}';

/// Provides a way to represent the current object as a string.
///
/// {@category interface}
class IStringable extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStringable.fromRawPointer(super.ptr);

  factory IStringable.from(IInspectable interface) =>
      IStringable.fromRawPointer(interface.toInterface(IID_IStringable));

  @override
  String toString() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
