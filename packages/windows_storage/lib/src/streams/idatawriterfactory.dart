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

import 'datawriter.dart';
import 'ioutputstream.dart';

/// @nodoc
const IID_IDataWriterFactory = '{338c67c2-8b84-4c2b-9c50-7b8767847a1f}';

class IDataWriterFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDataWriterFactory.fromPtr(super.ptr);

  factory IDataWriterFactory.from(IInspectable interface) =>
      interface.cast(IDataWriterFactory.fromPtr, IID_IDataWriterFactory);

  DataWriter createDataWriter(IOutputStream? outputStream) {
    final dataWriter = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer outputStream,
                            Pointer<COMObject> dataWriter)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer outputStream,
                    Pointer<COMObject> dataWriter)>()(
        ptr.ref.lpVtbl, outputStream.lpVtbl, dataWriter);

    if (FAILED(hr)) {
      free(dataWriter);
      throwWindowsException(hr);
    }

    return DataWriter.fromPtr(dataWriter);
  }
}
