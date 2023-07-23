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

import 'messagedialog.dart';

/// @nodoc
const IID_IMessageDialogFactory = '{2d161777-a66f-4ea5-bb87-793ffa4941f2}';

class IMessageDialogFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IMessageDialogFactory.fromPtr(super.ptr);

  factory IMessageDialogFactory.from(IInspectable interface) =>
      IMessageDialogFactory.fromPtr(
          interface.toInterface(IID_IMessageDialogFactory));

  MessageDialog create(String content) {
    final messageDialog = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr content,
                            Pointer<COMObject> messageDialog)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int content,
                    Pointer<COMObject> messageDialog)>()(
        ptr.ref.lpVtbl, content.toHString(), messageDialog);

    if (FAILED(hr)) {
      free(messageDialog);
      throwWindowsException(hr);
    }

    return MessageDialog.fromPtr(messageDialog);
  }

  MessageDialog createWithTitle(String content, String title) {
    final messageDialog = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr content,
                            IntPtr title, Pointer<COMObject> messageDialog)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int content, int title,
                    Pointer<COMObject> messageDialog)>()(
        ptr.ref.lpVtbl, content.toHString(), title.toHString(), messageDialog);

    if (FAILED(hr)) {
      free(messageDialog);
      throwWindowsException(hr);
    }

    return MessageDialog.fromPtr(messageDialog);
  }
}
