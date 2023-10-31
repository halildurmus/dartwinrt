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
  INetworkOperatorTetheringManager.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_INetworkOperatorTetheringManagerVtbl>().ref;

  final _INetworkOperatorTetheringManagerVtbl _vtable;

  factory INetworkOperatorTetheringManager.from(IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringManager.fromPtr,
          IID_INetworkOperatorTetheringManager);

  int get maxClientCount {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_MaxClientCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get clientCount {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ClientCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  TetheringOperationalState get tetheringOperationalState {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_TetheringOperationalState.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringOperationalState.from(value.value);
    } finally {
      free(value);
    }
  }

  NetworkOperatorTetheringAccessPointConfiguration?
      getCurrentAccessPointConfiguration() {
    final configuration = calloc<COMObject>();

    final hr = _vtable.GetCurrentAccessPointConfiguration.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> configuration)>()(lpVtbl, configuration);

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

    final hr = _vtable.ConfigureAccessPointAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer configuration,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, configuration.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<NetworkOperatorTetheringOperationResult?> startTetheringAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StartTetheringAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            asyncInfo,
            tResultObjectCreator:
                NetworkOperatorTetheringOperationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<NetworkOperatorTetheringOperationResult?> stopTetheringAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.StopTetheringAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<NetworkOperatorTetheringOperationResult?>.fromPtr(
            asyncInfo,
            tResultObjectCreator:
                NetworkOperatorTetheringOperationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _INetworkOperatorTetheringManagerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_MaxClientCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ClientCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_TetheringOperationalState;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> configuration)>>
      GetCurrentAccessPointConfiguration;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer configuration,
              Pointer<COMObject> asyncInfo)>> ConfigureAccessPointAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      StartTetheringAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      StopTetheringAsync;
}
