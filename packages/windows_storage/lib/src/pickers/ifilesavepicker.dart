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

import '../storagefile.dart';
import 'pickerlocationid.dart';

/// @nodoc
const IID_IFileSavePicker = '{3286ffcb-617f-4cc5-af6a-b3fdf29ad145}';

class IFileSavePicker extends IInspectable {
  IFileSavePicker.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFileSavePickerVtbl>().ref;

  final _IFileSavePickerVtbl _vtable;

  factory IFileSavePicker.from(IInspectable interface) =>
      interface.cast(IFileSavePicker.fromPtr, IID_IFileSavePicker);

  String get settingsIdentifier {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SettingsIdentifier.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set settingsIdentifier(String value) {
    final hr = _vtable.put_SettingsIdentifier
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  PickerLocationId get suggestedStartLocation {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_SuggestedStartLocation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PickerLocationId.from(value.value);
    } finally {
      free(value);
    }
  }

  set suggestedStartLocation(PickerLocationId value) {
    final hr = _vtable.put_SuggestedStartLocation
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get commitButtonText {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CommitButtonText.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set commitButtonText(String value) {
    final hr = _vtable.put_CommitButtonText
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IMap<String, IVector<String>>? get fileTypeChoices {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FileTypeChoices.asFunction<
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

    return IMap.fromPtr(value,
        iterableIid: '{4fed2669-d0d3-59f6-91d9-95902d728d6a}',
        vObjectCreator: (ptr) => IVector.fromPtr(ptr,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
  }

  String get defaultFileExtension {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DefaultFileExtension.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set defaultFileExtension(String value) {
    final hr = _vtable.put_DefaultFileExtension
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  StorageFile? get suggestedSaveFile {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SuggestedSaveFile.asFunction<
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

    return StorageFile.fromPtr(value);
  }

  set suggestedSaveFile(StorageFile? value) {
    final hr = _vtable.put_SuggestedSaveFile.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get suggestedFileName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SuggestedFileName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set suggestedFileName(String value) {
    final hr = _vtable.put_SuggestedFileName
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<StorageFile?> pickSaveFileAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.PickSaveFileAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        tResultObjectCreator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IFileSavePickerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SettingsIdentifier;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_SettingsIdentifier;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_SuggestedStartLocation;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_SuggestedStartLocation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_CommitButtonText;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_CommitButtonText;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FileTypeChoices;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DefaultFileExtension;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_DefaultFileExtension;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SuggestedSaveFile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_SuggestedSaveFile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SuggestedFileName;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_SuggestedFileName;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      PickSaveFileAsync;
}
