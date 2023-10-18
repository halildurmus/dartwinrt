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
  IStorageItemExtraProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageItemExtraPropertiesVtbl>().ref;

  final _IStorageItemExtraPropertiesVtbl _vtable;

  factory IStorageItemExtraProperties.from(IInspectable interface) =>
      interface.cast(
          IStorageItemExtraProperties.fromPtr, IID_IStorageItemExtraProperties);

  Future<IMap<String, Object?>> retrievePropertiesAsync(
      IIterable<String>? propertiesToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = _vtable.RetrievePropertiesAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer propertiesToRetrieve,
                Pointer<COMObject> operation)>()(
        lpVtbl, propertiesToRetrieve.lpVtbl, operation);

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

    final hr = _vtable.SavePropertiesAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer propertiesToSave,
                Pointer<COMObject> operation)>()(
        lpVtbl, propertiesToSave.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> savePropertiesAsyncOverloadDefault() {
    final operation = calloc<COMObject>();

    final hr = _vtable.SavePropertiesAsyncOverloadDefault.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IStorageItemExtraPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer propertiesToRetrieve,
              Pointer<COMObject> operation)>> RetrievePropertiesAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer propertiesToSave,
              Pointer<COMObject> operation)>> SavePropertiesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      SavePropertiesAsyncOverloadDefault;
}
