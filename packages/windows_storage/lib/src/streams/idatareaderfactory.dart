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

import 'datareader.dart';
import 'iinputstream.dart';

/// @nodoc
const IID_IDataReaderFactory = '{d7527847-57da-4e15-914c-06806699a098}';

class IDataReaderFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDataReaderFactory.fromPtr(super.ptr);

  factory IDataReaderFactory.from(IInspectable interface) =>
      IDataReaderFactory.fromPtr(interface.toInterface(IID_IDataReaderFactory));

  DataReader createDataReader(IInputStream? inputStream) {
    final dataReader = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer inputStream,
                            Pointer<COMObject> dataReader)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                    Pointer<COMObject> dataReader)>()(
        ptr.ref.lpVtbl, inputStream.lpVtbl, dataReader);

    if (FAILED(hr)) {
      free(dataReader);
      throwWindowsException(hr);
    }

    return DataReader.fromPtr(dataReader);
  }
}
