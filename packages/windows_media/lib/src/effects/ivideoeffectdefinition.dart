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
const IID_IVideoEffectDefinition = '{39f38cf0-8d0f-4f3e-84fc-2d46a5297943}';

/// Exposes the methods and properties of a VideoEffectDefinition object.
/// Implement this interface when you create a custom video effect definition.
class IVideoEffectDefinition extends IInspectable {
  IVideoEffectDefinition.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoEffectDefinitionVtbl>().ref;

  final _IVideoEffectDefinitionVtbl _vtable;

  factory IVideoEffectDefinition.from(IInspectable interface) => interface.cast(
      IVideoEffectDefinition.fromPtr, IID_IVideoEffectDefinition);

  String get activatableClassId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ActivatableClassId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IPropertySet? get properties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Properties.asFunction<
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

    return IPropertySet.fromPtr(value);
  }
}

final class _IVideoEffectDefinitionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ActivatableClassId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Properties;
}
