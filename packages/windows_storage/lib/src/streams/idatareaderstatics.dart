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
import 'ibuffer.dart';

/// @nodoc
const IID_IDataReaderStatics = '{11fcbfc8-f93a-471b-b121-f379e349313c}';

class IDataReaderStatics extends IInspectable {
  IDataReaderStatics.fromPtr(super.ptr);

  factory IDataReaderStatics.from(IInspectable interface) =>
      interface.cast(IDataReaderStatics.fromPtr, IID_IDataReaderStatics);

  DataReader? fromBuffer(IBuffer? buffer) {
    final dataReader = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer buffer,
                                Pointer<COMObject> dataReader)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer buffer,
                        Pointer<COMObject> dataReader)>()(
            lpVtbl, buffer.lpVtbl, dataReader);

    if (FAILED(hr)) {
      free(dataReader);
      throwWindowsException(hr);
    }

    if (dataReader.isNull) {
      free(dataReader);
      return null;
    }

    return DataReader.fromPtr(dataReader);
  }
}
