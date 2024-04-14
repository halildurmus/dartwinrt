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

import '../storagefile.dart';
import 'pickerlocationid.dart';
import 'pickerviewmode.dart';

/// @nodoc
const IID_IFileOpenPicker = '{2ca8278a-12c5-4c5f-8977-94547793c241}';

class IFileOpenPicker extends IInspectable {
  IFileOpenPicker.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFileOpenPickerVtbl>().ref;

  final _IFileOpenPickerVtbl _vtable;

  factory IFileOpenPicker.from(IInspectable interface) =>
      interface.cast(IFileOpenPicker.fromPtr, IID_IFileOpenPicker);

  PickerViewMode get viewMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ViewMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PickerViewMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set viewMode(PickerViewMode value) {
    final hr = _vtable.put_ViewMode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

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

  IVector<String>? get fileTypeFilter {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FileTypeFilter.asFunction<
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

    return IVector.fromPtr(value,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  Future<StorageFile?> pickSingleFileAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.PickSingleFileAsync.asFunction<
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

  Future<List<StorageFile?>> pickMultipleFilesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.PickMultipleFilesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}',
            tObjectCreator: StorageFile.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }
}

final class _IFileOpenPickerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ViewMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_ViewMode;
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
      get_FileTypeFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      PickSingleFileAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      PickMultipleFilesAsync;
}
