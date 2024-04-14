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

import 'uicommand.dart';

/// @nodoc
const IID_IUICommandFactory = '{a21a8189-26b0-4676-ae94-54041bc125e8}';

class IUICommandFactory extends IInspectable {
  IUICommandFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUICommandFactoryVtbl>().ref;

  final _IUICommandFactoryVtbl _vtable;

  factory IUICommandFactory.from(IInspectable interface) =>
      interface.cast(IUICommandFactory.fromPtr, IID_IUICommandFactory);

  UICommand create(String label) {
    final instance = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, int label,
                Pointer<COMObject> instance)>()(
        lpVtbl, label.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return UICommand.fromPtr(instance);
  }

  UICommand createWithHandler(String label, Pointer<COMObject> action) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateWithHandler.asFunction<
            int Function(VTablePointer lpVtbl, int label, VTablePointer action,
                Pointer<COMObject> instance)>()(
        lpVtbl, label.toHString(), action.ref.lpVtbl, instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return UICommand.fromPtr(instance);
  }

  UICommand createWithHandlerAndId(
      String label, Pointer<COMObject> action, Object? commandId) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateWithHandlerAndId.asFunction<
            int Function(VTablePointer lpVtbl, int label, VTablePointer action,
                VTablePointer commandId, Pointer<COMObject> instance)>()(
        lpVtbl,
        label.toHString(),
        action.ref.lpVtbl,
        commandId?.boxValue().lpVtbl ?? nullptr,
        instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return UICommand.fromPtr(instance);
  }
}

final class _IUICommandFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr label,
              Pointer<COMObject> instance)>> Create;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr label,
              VTablePointer action,
              Pointer<COMObject> instance)>> CreateWithHandler;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr label,
              VTablePointer action,
              VTablePointer commandId,
              Pointer<COMObject> instance)>> CreateWithHandlerAndId;
}
