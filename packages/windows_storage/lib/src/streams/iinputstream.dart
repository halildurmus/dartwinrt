// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'ibuffer.dart';

/// @nodoc
const IID_IInputStream = '{905a0fe2-bc53-11df-8c49-001e4fc686da}';

/// {@category interface}
class IInputStream extends IInspectable implements IClosable {
  // vtable begins at 6, is 1 entries long.
  IInputStream.fromRawPointer(super.ptr);

  factory IInputStream.from(IInspectable interface) =>
      IInputStream.fromRawPointer(interface.toInterface(IID_IInputStream));

  Pointer<COMObject> readAsync(
      IBuffer? buffer, int count, InputStreamOptions options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL buffer, Uint32 count,
                            Uint32 options, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL buffer, int count, int options,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        buffer == null ? nullptr : buffer.ptr.ref.lpVtbl,
        count,
        options.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  // IClosable methods
  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
