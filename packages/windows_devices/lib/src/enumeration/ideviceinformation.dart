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

import 'deviceinformationupdate.dart';
import 'devicethumbnail.dart';
import 'enclosurelocation.dart';

/// @nodoc
const IID_IDeviceInformation = '{aba0fb95-4398-489d-8e44-e6130927011f}';

class IDeviceInformation extends IInspectable {
  IDeviceInformation.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDeviceInformationVtbl>().ref;

  final _IDeviceInformationVtbl _vtable;

  factory IDeviceInformation.from(IInspectable interface) =>
      interface.cast(IDeviceInformation.fromPtr, IID_IDeviceInformation);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool get isEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isDefault {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsDefault.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  EnclosureLocation? get enclosureLocation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_EnclosureLocation.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return EnclosureLocation.fromPtr(value);
  }

  Map<String, Object?>? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IMapView<String, Object?>.fromPtr(value,
            iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}')
        .toMap();
  }

  void update(DeviceInformationUpdate? updateInfo) {
    final hr = _vtable.Update.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer updateInfo)>()(
        lpVtbl, updateInfo.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<DeviceThumbnail?> getThumbnailAsync() {
    final asyncOp = calloc<COMObject>();

    final hr = _vtable.GetThumbnailAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncOp)>()(
        lpVtbl, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceThumbnail?>.fromPtr(asyncOp,
        creator: DeviceThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceThumbnail?> getGlyphThumbnailAsync() {
    final asyncOp = calloc<COMObject>();

    final hr = _vtable.GetGlyphThumbnailAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncOp)>()(
        lpVtbl, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceThumbnail?>.fromPtr(asyncOp,
        creator: DeviceThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDeviceInformationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsDefault;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_EnclosureLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer updateInfo)>>
      Update;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncOp)>>
      GetThumbnailAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncOp)>>
      GetGlyphThumbnailAsync;
}
