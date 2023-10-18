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

import 'hostname.dart';

/// @nodoc
const IID_IHostNameFactory = '{458c23ed-712f-4576-adf1-c20b2c643558}';

class IHostNameFactory extends IInspectable {
  IHostNameFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IHostNameFactoryVtbl>().ref;

  final _IHostNameFactoryVtbl _vtable;

  factory IHostNameFactory.from(IInspectable interface) =>
      interface.cast(IHostNameFactory.fromPtr, IID_IHostNameFactory);

  HostName createHostName(String hostName) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateHostName.asFunction<
        int Function(VTablePointer lpVtbl, int hostName,
            Pointer<COMObject> value)>()(lpVtbl, hostName.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return HostName.fromPtr(value);
  }
}

final class _IHostNameFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr hostName,
              Pointer<COMObject> value)>> CreateHostName;
}
