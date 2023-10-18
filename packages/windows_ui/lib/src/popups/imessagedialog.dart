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

import 'iuicommand.dart';
import 'messagedialogoptions.dart';

/// @nodoc
const IID_IMessageDialog = '{33f59b01-5325-43ab-9ab3-bdae440e4121}';

class IMessageDialog extends IInspectable {
  IMessageDialog.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMessageDialogVtbl>().ref;

  final _IMessageDialogVtbl _vtable;

  factory IMessageDialog.from(IInspectable interface) =>
      interface.cast(IMessageDialog.fromPtr, IID_IMessageDialog);

  String get title {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Title.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set title(String value) {
    final hr = _vtable.put_Title
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<IUICommand?>? get commands {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Commands.asFunction<
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
        iterableIid: '{e63de42b-53c3-5e07-90d3-98172d545412}',
        creator: IUICommand.fromPtr);
  }

  int get defaultCommandIndex {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DefaultCommandIndex.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set defaultCommandIndex(int value) {
    final hr = _vtable.put_DefaultCommandIndex
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get cancelCommandIndex {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_CancelCommandIndex.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set cancelCommandIndex(int value) {
    final hr = _vtable.put_CancelCommandIndex
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get content {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Content.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set content(String value) {
    final hr = _vtable.put_Content
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<IUICommand?> showAsync() {
    final messageDialogAsyncOperation = calloc<COMObject>();

    final hr = _vtable.ShowAsync.asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> messageDialogAsyncOperation)>()(
        lpVtbl, messageDialogAsyncOperation);

    if (FAILED(hr)) {
      free(messageDialogAsyncOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IUICommand?>.fromPtr(
        messageDialogAsyncOperation,
        creator: IUICommand.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  MessageDialogOptions get options {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Options.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MessageDialogOptions.from(value.value);
    } finally {
      free(value);
    }
  }

  set options(MessageDialogOptions value) {
    final hr = _vtable.put_Options
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMessageDialogVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Title;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Title;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Commands;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DefaultCommandIndex;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_DefaultCommandIndex;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_CancelCommandIndex;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_CancelCommandIndex;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Content;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Content;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<COMObject> messageDialogAsyncOperation)>> ShowAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Options;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Options;
}
