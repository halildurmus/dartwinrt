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

import 'automationconnection.dart';

/// @nodoc
const IID_IAutomationConnectionBoundObject =
    '{5e8558fb-ca52-5b65-9830-dd2905816093}';

class IAutomationConnectionBoundObject extends IInspectable {
  IAutomationConnectionBoundObject.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IAutomationConnectionBoundObjectVtbl>().ref;

  final _IAutomationConnectionBoundObjectVtbl _vtable;

  factory IAutomationConnectionBoundObject.from(IInspectable interface) =>
      interface.cast(IAutomationConnectionBoundObject.fromPtr,
          IID_IAutomationConnectionBoundObject);

  AutomationConnection? get connection {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Connection.asFunction<
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

    return AutomationConnection.fromPtr(value);
  }
}

final class _IAutomationConnectionBoundObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Connection;
}
