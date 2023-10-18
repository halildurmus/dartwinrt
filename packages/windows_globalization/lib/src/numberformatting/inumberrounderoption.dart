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

import 'inumberrounder.dart';

/// @nodoc
const IID_INumberRounderOption = '{3b088433-646f-4efe-8d48-66eb2e49e736}';

class INumberRounderOption extends IInspectable {
  INumberRounderOption.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INumberRounderOptionVtbl>().ref;

  final _INumberRounderOptionVtbl _vtable;

  factory INumberRounderOption.from(IInspectable interface) =>
      interface.cast(INumberRounderOption.fromPtr, IID_INumberRounderOption);

  INumberRounder? get numberRounder {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NumberRounder.asFunction<
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

    return INumberRounder.fromPtr(value);
  }

  set numberRounder(INumberRounder? value) {
    final hr = _vtable.put_NumberRounder.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _INumberRounderOptionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NumberRounder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_NumberRounder;
}
