// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'datareader.dart';
import 'ibuffer.dart';

/// @nodoc
const IID_IDataReaderStatics = '{11fcbfc8-f93a-471b-b121-f379e349313c}';

class IDataReaderStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDataReaderStatics.fromPtr(super.ptr);

  factory IDataReaderStatics.from(IInspectable interface) =>
      IDataReaderStatics.fromPtr(interface.toInterface(IID_IDataReaderStatics));

  DataReader? fromBuffer(IBuffer? buffer) {
    final retValuePtr = calloc<COMObject>();
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer buffer,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer buffer,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, bufferPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DataReader.fromPtr(retValuePtr);
  }
}
