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

import 'storagelibrarychange.dart';

/// @nodoc
const IID_IStorageLibraryChangeReader =
    '{f205bc83-fca2-41f9-8954-ee2e991eb96f}';

/// {@category interface}
class IStorageLibraryChangeReader extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IStorageLibraryChangeReader.fromRawPointer(super.ptr);

  factory IStorageLibraryChangeReader.from(IInspectable interface) =>
      IStorageLibraryChangeReader.fromRawPointer(
          interface.toInterface(IID_IStorageLibraryChangeReader));

  Future<List<StorageLibraryChange>> readBatchAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<StorageLibraryChange>>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<StorageLibraryChange>>.fromRawPointer(
            retValuePtr,
            creator: (ptr) => IVectorView.fromRawPointer(ptr,
                creator: StorageLibraryChange.fromRawPointer,
                iterableIid: '{87c15dfc-0c5e-518b-9206-97d3d9823c61}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<void> acceptChangesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }
}
