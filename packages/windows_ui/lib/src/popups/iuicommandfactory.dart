// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
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
    final retValuePtr = calloc<COMObject>();
    final labelHString = label.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr label,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int label,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, labelHString, retValuePtr);

    WindowsDeleteString(labelHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return UICommand.fromPtr(retValuePtr);
  }

  UICommand createWithHandler(String label, Pointer<COMObject> action) {
    final retValuePtr = calloc<COMObject>();
    final labelHString = label.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr label,
                            VTablePointer action,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int label,
                    VTablePointer action, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, labelHString, action.ref.lpVtbl, retValuePtr);

    WindowsDeleteString(labelHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return UICommand.fromPtr(retValuePtr);
  }

  UICommand createWithHandlerAndId(
      String label, Pointer<COMObject> action, Object? commandId) {
    final retValuePtr = calloc<COMObject>();
    final labelHString = label.toHString();
    final commandIdPtr = commandId?.intoBox().ptr.ref.lpVtbl ?? nullptr;

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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int label,
                    VTablePointer action,
                    VTablePointer commandId,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        labelHString, action.ref.lpVtbl, commandIdPtr, retValuePtr);

    WindowsDeleteString(labelHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return UICommand.fromPtr(retValuePtr);
  }
}
