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

/// @nodoc
const IID_ILearningModelBinding = '{ea312f20-168f-4f8c-94fe-2e7ac31b4aa8}';

class ILearningModelBinding extends IInspectable {
  ILearningModelBinding.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILearningModelBindingVtbl>().ref;

  final _ILearningModelBindingVtbl _vtable;

  factory ILearningModelBinding.from(IInspectable interface) =>
      interface.cast(ILearningModelBinding.fromPtr, IID_ILearningModelBinding);

  void bind(String name, Object? value) {
    final hr = _vtable.Bind.asFunction<
            int Function(
                VTablePointer lpVtbl, int name, VTablePointer value)>()(
        lpVtbl, name.toHString(), value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void bindWithProperties(String name, Object? value, IPropertySet? props) {
    final hr = _vtable.BindWithProperties.asFunction<
            int Function(VTablePointer lpVtbl, int name, VTablePointer value,
                VTablePointer props)>()(lpVtbl, name.toHString(),
        value?.boxValue().lpVtbl ?? nullptr, props.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clear() {
    final hr =
        _vtable.Clear.asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ILearningModelBindingVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, IntPtr name, VTablePointer value)>> Bind;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              VTablePointer value, VTablePointer props)>> BindWithProperties;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Clear;
}
