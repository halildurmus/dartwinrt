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

import 'storagelibrarychangereader.dart';

/// @nodoc
const IID_IStorageLibraryChangeTracker =
    '{9e157316-6073-44f6-9681-7492d1286c90}';

/// {@category interface}
class IStorageLibraryChangeTracker extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IStorageLibraryChangeTracker.fromRawPointer(super.ptr);

  factory IStorageLibraryChangeTracker.from(IInspectable interface) =>
      IStorageLibraryChangeTracker.fromRawPointer(
          interface.toInterface(IID_IStorageLibraryChangeTracker));

  StorageLibraryChangeReader? getChangeReader() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageLibraryChangeReader.fromRawPointer(retValuePtr);
  }

  void enable() {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void reset() {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
