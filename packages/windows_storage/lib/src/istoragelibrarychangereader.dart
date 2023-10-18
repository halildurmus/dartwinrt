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

import 'storagelibrarychange.dart';

/// @nodoc
const IID_IStorageLibraryChangeReader =
    '{f205bc83-fca2-41f9-8954-ee2e991eb96f}';

class IStorageLibraryChangeReader extends IInspectable {
  IStorageLibraryChangeReader.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageLibraryChangeReaderVtbl>().ref;

  final _IStorageLibraryChangeReaderVtbl _vtable;

  factory IStorageLibraryChangeReader.from(IInspectable interface) =>
      interface.cast(
          IStorageLibraryChangeReader.fromPtr, IID_IStorageLibraryChangeReader);

  Future<List<StorageLibraryChange?>> readBatchAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.ReadBatchAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<StorageLibraryChange?>>.fromPtr(operation,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: StorageLibraryChange.fromPtr,
                iterableIid: '{87c15dfc-0c5e-518b-9206-97d3d9823c61}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<void> acceptChangesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.AcceptChangesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IStorageLibraryChangeReaderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      ReadBatchAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      AcceptChangesAsync;
}
