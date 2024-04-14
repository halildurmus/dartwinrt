// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'package:windows_storage/windows_storage.dart';

import 'core/applistentry.dart';

/// @nodoc
const IID_IPackage8 = '{2c584f7b-ce2a-4be6-a093-77cfbb2a7ea1}';

class IPackage8 extends IInspectable {
  IPackage8.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage8Vtbl>().ref;

  final _IPackage8Vtbl _vtable;

  factory IPackage8.from(IInspectable interface) =>
      interface.cast(IPackage8.fromPtr, IID_IPackage8);

  StorageFolder? get effectiveExternalLocation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_EffectiveExternalLocation.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get machineExternalLocation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MachineExternalLocation.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get userExternalLocation {
    final value = calloc<COMObject>();

    final hr = _vtable.get_UserExternalLocation.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  String get installedPath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_InstalledPath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get mutablePath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_MutablePath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get effectivePath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_EffectivePath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get effectiveExternalPath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_EffectiveExternalPath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get machineExternalPath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_MachineExternalPath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get userExternalPath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_UserExternalPath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  RandomAccessStreamReference? getLogoAsRandomAccessStreamReference(Size size) {
    final result = calloc<COMObject>();
    final sizeNativeStructPtr = size.toNative();

    final hr = _vtable.GetLogoAsRandomAccessStreamReference.asFunction<
            int Function(VTablePointer lpVtbl, NativeSize size,
                Pointer<COMObject> result)>()(
        lpVtbl, sizeNativeStructPtr.ref, result);

    free(sizeNativeStructPtr);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(result);
  }

  List<AppListEntry?> getAppListEntries() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetAppListEntries.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<AppListEntry?>.fromPtr(result,
            iterableIid: '{86f4d4ef-d8fd-5fb5-807c-72da8fc9e544}',
            tObjectCreator: AppListEntry.fromPtr)
        .toList();
  }

  bool get isStub {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsStub.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IPackage8Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_EffectiveExternalLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MachineExternalLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_UserExternalLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_InstalledPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_MutablePath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_EffectivePath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_EffectiveExternalPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_MachineExternalPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_UserExternalPath;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeSize size,
              Pointer<COMObject> result)>> GetLogoAsRandomAccessStreamReference;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetAppListEntries;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsStub;
}
