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

import 'networkoperatortetheringaccesspointconfiguration.dart';
import 'networkoperatortetheringoperationresult.dart';
import 'tetheringoperationalstate.dart';

/// @nodoc
const IID_INetworkOperatorTetheringManager =
    '{d45a8da0-0e86-4d98-8ba4-dd70d4b764d3}';

/// {@category interface}
class INetworkOperatorTetheringManager extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  INetworkOperatorTetheringManager.fromPtr(super.ptr);

  factory INetworkOperatorTetheringManager.from(IInspectable interface) =>
      INetworkOperatorTetheringManager.fromPtr(
          interface.toInterface(IID_INetworkOperatorTetheringManager));

  int get maxClientCount {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int get clientCount {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Uint32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  TetheringOperationalState get tetheringOperationalState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return TetheringOperationalState.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  NetworkOperatorTetheringAccessPointConfiguration?
      getCurrentAccessPointConfiguration() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return NetworkOperatorTetheringAccessPointConfiguration.fromPtr(
        retValuePtr);
  }

  Future<void> configureAccessPointAsync(
      NetworkOperatorTetheringAccessPointConfiguration? configuration) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final configurationPtr =
        configuration == null ? nullptr : configuration.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL configuration,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL configuration,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, configurationPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromPtr(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<NetworkOperatorTetheringOperationResult?> startTetheringAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<NetworkOperatorTetheringOperationResult?>();

    final hr = ptr.ref.vtable
            .elementAt(11)
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
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            retValuePtr,
            creator: NetworkOperatorTetheringOperationResult.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<NetworkOperatorTetheringOperationResult?> stopTetheringAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<NetworkOperatorTetheringOperationResult?>();

    final hr = ptr.ref.vtable
            .elementAt(12)
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
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            retValuePtr,
            creator: NetworkOperatorTetheringOperationResult.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
