// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istorageprovider.dart';

/// @nodoc
const IID_IStorageProvider2 = '{010d1917-3404-414b-9fd7-cd44472eaa39}';

/// {@category interface}
class IStorageProvider2 extends IInspectable implements IStorageProvider {
  // vtable begins at 6, is 1 entries long.
  IStorageProvider2.fromRawPointer(super.ptr);

  factory IStorageProvider2.from(IInspectable interface) =>
      IStorageProvider2.fromRawPointer(
          interface.toInterface(IID_IStorageProvider2));

  Future<bool> isPropertySupportedForPartialFileAsync(
      String propertyCanonicalName) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<bool>();
    final propertyCanonicalNameHString = propertyCanonicalName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr propertyCanonicalName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int propertyCanonicalName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, propertyCanonicalNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(propertyCanonicalNameHString);

    final asyncOperation = IAsyncOperation<bool>.fromRawPointer(retValuePtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  // IStorageProvider methods
  late final _iStorageProvider = IStorageProvider.from(this);

  @override
  String get id => _iStorageProvider.id;

  @override
  String get displayName => _iStorageProvider.displayName;
}
