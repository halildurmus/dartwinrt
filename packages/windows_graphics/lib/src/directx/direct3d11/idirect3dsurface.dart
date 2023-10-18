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

import 'direct3dsurfacedescription.dart';

/// @nodoc
const IID_IDirect3DSurface = '{0bf4a146-13c1-4694-bee3-7abf15eaf586}';

/// This represents an IDXGISurface and can be used to interop between Windows
/// Runtime components that need to exchange IDXGISurface references.
class IDirect3DSurface extends IInspectable implements IClosable {
  IDirect3DSurface.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDirect3DSurfaceVtbl>().ref;

  final _IDirect3DSurfaceVtbl _vtable;

  factory IDirect3DSurface.from(IInspectable interface) =>
      interface.cast(IDirect3DSurface.fromPtr, IID_IDirect3DSurface);

  Direct3DSurfaceDescription get description {
    final value = calloc<NativeDirect3DSurfaceDescription>();

    try {
      final hr = _vtable.get_Description.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeDirect3DSurfaceDescription> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IDirect3DSurfaceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<NativeDirect3DSurfaceDescription> value)>>
      get_Description;
}
