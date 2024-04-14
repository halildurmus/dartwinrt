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

import 'datawriter.dart';
import 'ioutputstream.dart';

/// @nodoc
const IID_IDataWriterFactory = '{338c67c2-8b84-4c2b-9c50-7b8767847a1f}';

class IDataWriterFactory extends IInspectable {
  IDataWriterFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataWriterFactoryVtbl>().ref;

  final _IDataWriterFactoryVtbl _vtable;

  factory IDataWriterFactory.from(IInspectable interface) =>
      interface.cast(IDataWriterFactory.fromPtr, IID_IDataWriterFactory);

  DataWriter createDataWriter(IOutputStream? outputStream) {
    final dataWriter = calloc<COMObject>();

    final hr = _vtable.CreateDataWriter.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer outputStream,
                Pointer<COMObject> dataWriter)>()(
        lpVtbl, outputStream.lpVtbl, dataWriter);

    if (FAILED(hr)) {
      free(dataWriter);
      throwWindowsException(hr);
    }

    return DataWriter.fromPtr(dataWriter);
  }
}

final class _IDataWriterFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer outputStream,
              Pointer<COMObject> dataWriter)>> CreateDataWriter;
}
