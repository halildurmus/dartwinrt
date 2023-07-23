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

import 'networkoperatortetheringaccesspointconfiguration.dart';
import 'networkoperatortetheringoperationresult.dart';
import 'tetheringoperationalstate.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManager =
    '{d45a8da0-0e86-4d98-8ba4-dd70d4b764d3}';

class INetworkOperatorTetheringManager extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  INetworkOperatorTetheringManager.fromPtr(super.ptr);

  factory INetworkOperatorTetheringManager.from(IInspectable interface) =>
      INetworkOperatorTetheringManager.fromPtr(
          interface.toInterface(IID_INetworkOperatorTetheringManager));

  int get maxClientCount {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get clientCount {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  TetheringOperationalState get tetheringOperationalState {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringOperationalState.from(value.value);
    } finally {
      free(value);
    }
  }

  NetworkOperatorTetheringAccessPointConfiguration?
      getCurrentAccessPointConfiguration() {
    final configuration = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            Pointer<COMObject> configuration)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, Pointer<COMObject> configuration)>()(
        ptr.ref.lpVtbl, configuration);

    if (FAILED(hr)) {
      free(configuration);
      throwWindowsException(hr);
    }

    if (configuration.isNull) {
      free(configuration);
      return null;
    }

    return NetworkOperatorTetheringAccessPointConfiguration.fromPtr(
        configuration);
  }

  Future<void> configureAccessPointAsync(
      NetworkOperatorTetheringAccessPointConfiguration? configuration) {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer configuration,
                            Pointer<COMObject> asyncInfo)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer configuration,
                    Pointer<COMObject> asyncInfo)>()(
        ptr.ref.lpVtbl, configuration.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<NetworkOperatorTetheringOperationResult?> startTetheringAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            asyncInfo,
            creator: NetworkOperatorTetheringOperationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<NetworkOperatorTetheringOperationResult?> stopTetheringAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            asyncInfo,
            creator: NetworkOperatorTetheringOperationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
