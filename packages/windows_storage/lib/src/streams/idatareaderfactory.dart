// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
  IDataReaderFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataReaderFactoryVtbl>().ref;

  final _IDataReaderFactoryVtbl _vtable;

  factory IDataReaderFactory.from(IInspectable interface) =>
      interface.cast(IDataReaderFactory.fromPtr, IID_IDataReaderFactory);

  DataReader createDataReader(IInputStream? inputStream) {
    final dataReader = calloc<COMObject>();

    final hr = _vtable.CreateDataReader.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer inputStream,
                Pointer<COMObject> dataReader)>()(
        lpVtbl, inputStream.lpVtbl, dataReader);

    if (FAILED(hr)) {
      free(dataReader);
      throwWindowsException(hr);
    }

    return DataReader.fromPtr(dataReader);
  }
}

final class _IDataReaderFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer inputStream,
              Pointer<COMObject> dataReader)>> CreateDataReader;
}
