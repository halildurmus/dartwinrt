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

import 'istorageprovider.dart';

/// @nodoc
const IID_IStorageProvider2 = '{010d1917-3404-414b-9fd7-cd44472eaa39}';

class IStorageProvider2 extends IInspectable implements IStorageProvider {
  // vtable begins at 6, is 1 entries long.
  IStorageProvider2.fromPtr(super.ptr);

  factory IStorageProvider2.from(IInspectable interface) =>
      IStorageProvider2.fromPtr(interface.toInterface(IID_IStorageProvider2));

  Future<bool> isPropertySupportedForPartialFileAsync(
      String propertyCanonicalName) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr propertyCanonicalName,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int propertyCanonicalName,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, propertyCanonicalName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iStorageProvider = IStorageProvider.from(this);

  @override
  String get id => _iStorageProvider.id;

  @override
  String get displayName => _iStorageProvider.displayName;
}
