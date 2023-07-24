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

import 'uicommand.dart';

/// @nodoc
const IID_IUICommandFactory = '{a21a8189-26b0-4676-ae94-54041bc125e8}';

class IUICommandFactory extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IUICommandFactory.fromPtr(super.ptr);

  factory IUICommandFactory.from(IInspectable interface) =>
      IUICommandFactory.fromPtr(interface.toInterface(IID_IUICommandFactory));

  UICommand create(String label) {
    final instance = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr label,
                            Pointer<COMObject> instance)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int label,
                    Pointer<COMObject> instance)>()(
        ptr.ref.lpVtbl, label.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return UICommand.fromPtr(instance);
  }

  UICommand createWithHandler(String label, Pointer<COMObject> action) {
    final instance = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr label,
                                VTablePointer action,
                                Pointer<COMObject> instance)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int label,
                        VTablePointer action, Pointer<COMObject> instance)>()(
            ptr.ref.lpVtbl, label.toHString(), action.ref.lpVtbl, instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return UICommand.fromPtr(instance);
  }

  UICommand createWithHandlerAndId(
      String label, Pointer<COMObject> action, Object? commandId) {
    final instance = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr label,
                            VTablePointer action,
                            VTablePointer commandId,
                            Pointer<COMObject> instance)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int label,
                    VTablePointer action,
                    VTablePointer commandId,
                    Pointer<COMObject> instance)>()(
        ptr.ref.lpVtbl,
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
