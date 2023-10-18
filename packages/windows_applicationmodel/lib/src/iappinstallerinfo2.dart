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

import 'appinstallerpolicysource.dart';
import 'packageversion.dart';

/// @nodoc
const IID_IAppInstallerInfo2 = '{d20f1388-8256-597c-8511-c84ec50d5e2b}';

class IAppInstallerInfo2 extends IInspectable {
  IAppInstallerInfo2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAppInstallerInfo2Vtbl>().ref;

  final _IAppInstallerInfo2Vtbl _vtable;

  factory IAppInstallerInfo2.from(IInspectable interface) =>
      interface.cast(IAppInstallerInfo2.fromPtr, IID_IAppInstallerInfo2);

  bool get onLaunch {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_OnLaunch.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get hoursBetweenUpdateChecks {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_HoursBetweenUpdateChecks.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get showPrompt {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ShowPrompt.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get updateBlocksActivation {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_UpdateBlocksActivation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get automaticBackgroundTask {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutomaticBackgroundTask.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get forceUpdateFromAnyVersion {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ForceUpdateFromAnyVersion.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isAutoRepairEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsAutoRepairEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  PackageVersion get version {
    final value = calloc<NativePackageVersion>();

    try {
      final hr = _vtable.get_Version.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativePackageVersion> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  DateTime get lastChecked {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_LastChecked.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  DateTime? get pausedUntil {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PausedUntil.asFunction<
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

    return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}')
        .value;
  }

  List<Uri?>? get updateUris {
    final value = calloc<COMObject>();

    final hr = _vtable.get_UpdateUris.asFunction<
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

    return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}')
        .toList();
  }

  List<Uri?>? get repairUris {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RepairUris.asFunction<
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

    return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}')
        .toList();
  }

  List<Uri?>? get dependencyPackageUris {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DependencyPackageUris.asFunction<
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

    return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}')
        .toList();
  }

  List<Uri?>? get optionalPackageUris {
    final value = calloc<COMObject>();

    final hr = _vtable.get_OptionalPackageUris.asFunction<
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

    return IVectorView<Uri?>.fromPtr(value,
            iterableIid: '{b0d63b78-78ad-5e31-b6d8-e32a0e16c447}')
        .toList();
  }

  AppInstallerPolicySource get policySource {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PolicySource.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AppInstallerPolicySource.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IAppInstallerInfo2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_OnLaunch;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_HoursBetweenUpdateChecks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ShowPrompt;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_UpdateBlocksActivation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutomaticBackgroundTask;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ForceUpdateFromAnyVersion;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsAutoRepairEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePackageVersion> value)>>
      get_Version;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_LastChecked;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PausedUntil;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_UpdateUris;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RepairUris;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DependencyPackageUris;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_OptionalPackageUris;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PolicySource;
}
