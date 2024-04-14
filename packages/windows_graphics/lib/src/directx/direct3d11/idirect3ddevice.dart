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

/// @nodoc
const IID_IDirect3DDevice = '{a37624ab-8d5f-4650-9d3e-9eae3d9bc670}';

/// This represents an IDXGIDevice, and can be used to interop between Windows
/// Runtime components that need to exchange IDXGIDevice references.
class IDirect3DDevice extends IInspectable implements IClosable {
  IDirect3DDevice.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDirect3DDeviceVtbl>().ref;

  final _IDirect3DDeviceVtbl _vtable;

  factory IDirect3DDevice.from(IInspectable interface) =>
      interface.cast(IDirect3DDevice.fromPtr, IID_IDirect3DDevice);

  void trim() {
    final hr =
        _vtable.Trim.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IDirect3DDeviceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>> Trim;
}
