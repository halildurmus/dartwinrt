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

import 'messagedialog.dart';

/// @nodoc
const IID_IMessageDialogFactory = '{2d161777-a66f-4ea5-bb87-793ffa4941f2}';

class IMessageDialogFactory extends IInspectable {
  IMessageDialogFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMessageDialogFactoryVtbl>().ref;

  final _IMessageDialogFactoryVtbl _vtable;

  factory IMessageDialogFactory.from(IInspectable interface) =>
      interface.cast(IMessageDialogFactory.fromPtr, IID_IMessageDialogFactory);

  MessageDialog create(String content) {
    final messageDialog = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, int content,
                Pointer<COMObject> messageDialog)>()(
        lpVtbl, content.toHString(), messageDialog);

    if (FAILED(hr)) {
      free(messageDialog);
      throwWindowsException(hr);
    }

    return MessageDialog.fromPtr(messageDialog);
  }

  MessageDialog createWithTitle(String content, String title) {
    final messageDialog = calloc<COMObject>();

    final hr = _vtable.CreateWithTitle.asFunction<
            int Function(VTablePointer lpVtbl, int content, int title,
                Pointer<COMObject> messageDialog)>()(
        lpVtbl, content.toHString(), title.toHString(), messageDialog);

    if (FAILED(hr)) {
      free(messageDialog);
      throwWindowsException(hr);
    }

    return MessageDialog.fromPtr(messageDialog);
  }
}

final class _IMessageDialogFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr content,
              Pointer<COMObject> messageDialog)>> Create;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr content, IntPtr title,
              Pointer<COMObject> messageDialog)>> CreateWithTitle;
}
