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
import 'package:windows_ui/windows_ui.dart';

import 'deviceinformation.dart';
import 'devicepicker.dart';
import 'devicepickerappearance.dart';
import 'devicepickerfilter.dart';
import 'enums.g.dart';

/// @nodoc
const IID_IDevicePicker = '{84997aa2-034a-4440-8813-7d0bd479bf5a}';

/// {@category interface}
class IDevicePicker extends IInspectable {
  // vtable begins at 6, is 15 entries long.
  IDevicePicker.fromRawPointer(super.ptr);

  factory IDevicePicker.from(IInspectable interface) =>
      IDevicePicker.fromRawPointer(interface.toInterface(IID_IDevicePicker));

  DevicePickerFilter? get filter {
    final retValuePtr = calloc<COMObject>();

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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DevicePickerFilter.fromRawPointer(retValuePtr);
  }

  DevicePickerAppearance? get appearance {
    final retValuePtr = calloc<COMObject>();

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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DevicePickerAppearance.fromRawPointer(retValuePtr);
  }

  IVector<String> get requestedProperties {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    return IVector.fromRawPointer(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  int add_DeviceSelected(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_DeviceSelected(int token) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_DisconnectButtonClicked(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_DisconnectButtonClicked(int token) {
    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_DevicePickerDismissed(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_DevicePickerDismissed(int token) {
    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void show(Rect selection) {
    final selectionNativeStructPtr = selection.toNative();

    final hr =
        ptr.ref.vtable
                .elementAt(15)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl, NativeRect selection)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, NativeRect selection)>()(
            ptr.ref.lpVtbl, selectionNativeStructPtr.ref);

    if (FAILED(hr)) throw WindowsException(hr);

    free(selectionNativeStructPtr);
  }

  void showWithPlacement(Rect selection, Placement placement) {
    final selectionNativeStructPtr = selection.toNative();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, NativeRect selection,
                            Int32 placement)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, NativeRect selection, int placement)>()(
        ptr.ref.lpVtbl, selectionNativeStructPtr.ref, placement.value);

    if (FAILED(hr)) throw WindowsException(hr);

    free(selectionNativeStructPtr);
  }

  Future<DeviceInformation?> pickSingleDeviceAsync(Rect selection) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformation?>();
    final selectionNativeStructPtr = selection.toNative();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, NativeRect selection,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, NativeRect selection,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, selectionNativeStructPtr.ref, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(selectionNativeStructPtr);

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromRawPointer(
        retValuePtr,
        creator: DeviceInformation.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformation?> pickSingleDeviceAsyncWithPlacement(
      Rect selection, Placement placement) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformation?>();
    final selectionNativeStructPtr = selection.toNative();

    final hr =
        ptr.ref.vtable
                .elementAt(18)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                NativeRect selection,
                                Int32 placement,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, NativeRect selection,
                        int placement, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl,
            selectionNativeStructPtr.ref,
            placement.value,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    free(selectionNativeStructPtr);

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromRawPointer(
        retValuePtr,
        creator: DeviceInformation.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  void hide() {
    final hr = ptr.ref.vtable
        .elementAt(19)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL lpVtbl)>>>()
        .value
        .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void setDisplayStatus(DeviceInformation? device, String status,
      DevicePickerDisplayStatusOptions options) {
    final devicePtr = device == null ? nullptr : device.ptr.ref.lpVtbl;
    final statusHString = status.toHString();

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL device,
                            IntPtr status, Uint32 options)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, LPVTBL device, int status, int options)>()(
        ptr.ref.lpVtbl, devicePtr, statusHString, options.value);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(statusHString);
  }
}
