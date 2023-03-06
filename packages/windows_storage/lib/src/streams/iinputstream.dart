// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ibuffer.dart';
import 'inputstreamoptions.dart';

/// @nodoc
const IID_IInputStream = '{905a0fe2-bc53-11df-8c49-001e4fc686da}';

/// {@category interface}
class IInputStream extends IInspectable implements IClosable {
  // vtable begins at 6, is 1 entries long.
  IInputStream.fromPtr(super.ptr);

  factory IInputStream.from(IInspectable interface) =>
      IInputStream.fromPtr(interface.toInterface(IID_IInputStream));

  Pointer<COMObject> readAsync(
      IBuffer? buffer, int count, InputStreamOptions options) {
    final retValuePtr = calloc<COMObject>();
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL buffer,
                                Uint32 count,
                                Uint32 options,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL buffer, int count,
                        int options, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, bufferPtr, count, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
