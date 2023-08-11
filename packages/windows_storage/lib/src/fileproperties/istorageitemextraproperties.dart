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

/// @nodoc
const IID_IStorageItemExtraProperties =
    '{c54361b2-54cd-432b-bdbc-4b19c4b470d7}';

class IStorageItemExtraProperties extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IStorageItemExtraProperties.fromPtr(super.ptr);

  factory IStorageItemExtraProperties.from(IInspectable interface) =>
      interface.cast(
          IStorageItemExtraProperties.fromPtr, IID_IStorageItemExtraProperties);

  Future<IMap<String, Object?>> retrievePropertiesAsync(
      IIterable<String>? propertiesToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer propertiesToRetrieve,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer propertiesToRetrieve,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, propertiesToRetrieve.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IMap<String, Object?>>.fromPtr(
        operation,
        creator: (ptr) => IMap.fromPtr(ptr,
            iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> savePropertiesAsync(
      IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer propertiesToSave,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer propertiesToSave,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, propertiesToSave.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> savePropertiesAsyncOverloadDefault() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}
