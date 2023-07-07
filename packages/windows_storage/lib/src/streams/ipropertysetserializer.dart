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

import 'ibuffer.dart';

/// @nodoc
const IID_IPropertySetSerializer = '{6e8ebf1c-ef3d-4376-b20e-5be638aeac77}';

/// Provides the ability to serialize/deserialize an IPropertySet to an
/// IBuffer.
class IPropertySetSerializer extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPropertySetSerializer.fromPtr(super.ptr);

  factory IPropertySetSerializer.from(IInspectable interface) =>
      IPropertySetSerializer.fromPtr(
          interface.toInterface(IID_IPropertySetSerializer));

  IBuffer? serialize(IPropertySet? propertySet) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer propertySet,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer propertySet,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl,
        propertySet == null ? nullptr : propertySet.ptr.ref.lpVtbl, result);

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
    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer propertySet,
                                VTablePointer buffer)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl,
                        VTablePointer propertySet, VTablePointer buffer)>()(
            ptr.ref.lpVtbl,
            propertySet == null ? nullptr : propertySet.ptr.ref.lpVtbl,
            buffer == null ? nullptr : buffer.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
