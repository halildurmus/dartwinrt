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

import 'ibuffer.dart';

/// @nodoc
const IID_IPropertySetSerializer = '{6e8ebf1c-ef3d-4376-b20e-5be638aeac77}';

/// Provides the ability to serialize/deserialize an IPropertySet to an IBuffer.
class IPropertySetSerializer extends IInspectable {
  IPropertySetSerializer.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPropertySetSerializerVtbl>().ref;

  final _IPropertySetSerializerVtbl _vtable;

  factory IPropertySetSerializer.from(IInspectable interface) => interface.cast(
      IPropertySetSerializer.fromPtr, IID_IPropertySetSerializer);

  IBuffer? serialize(IPropertySet? propertySet) {
    final result = calloc<COMObject>();

    final hr = _vtable.Serialize.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer propertySet,
            Pointer<COMObject> result)>()(lpVtbl, propertySet.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return IBuffer.fromPtr(result);
  }

  void deserialize(IPropertySet? propertySet, IBuffer? buffer) {
    final hr = _vtable.Deserialize.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer propertySet,
            VTablePointer buffer)>()(lpVtbl, propertySet.lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IPropertySetSerializerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer propertySet,
              Pointer<COMObject> result)>> Serialize;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer propertySet,
              VTablePointer buffer)>> Deserialize;
}
