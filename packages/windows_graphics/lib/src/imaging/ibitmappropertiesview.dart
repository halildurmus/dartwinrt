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

import 'bitmappropertyset.dart';

/// @nodoc
const IID_IBitmapPropertiesView = '{7e0fe87a-3a70-48f8-9c55-196cf5a545f5}';

class IBitmapPropertiesView extends IInspectable {
  IBitmapPropertiesView.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapPropertiesViewVtbl>().ref;

  final _IBitmapPropertiesViewVtbl _vtable;

  factory IBitmapPropertiesView.from(IInspectable interface) =>
      interface.cast(IBitmapPropertiesView.fromPtr, IID_IBitmapPropertiesView);

  Future<BitmapPropertySet> getPropertiesAsync(
      IIterable<String>? propertiesToRetrieve) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetPropertiesAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer propertiesToRetrieve,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, propertiesToRetrieve.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<BitmapPropertySet>.fromPtr(asyncInfo,
        tResultObjectCreator: BitmapPropertySet.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IBitmapPropertiesViewVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer propertiesToRetrieve,
              Pointer<COMObject> asyncInfo)>> GetPropertiesAsync;
}
