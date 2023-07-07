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

/// @nodoc
const IID_ILearningModelBinding = '{ea312f20-168f-4f8c-94fe-2e7ac31b4aa8}';

class ILearningModelBinding extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  ILearningModelBinding.fromPtr(super.ptr);

  factory ILearningModelBinding.from(IInspectable interface) =>
      ILearningModelBinding.fromPtr(
          interface.toInterface(IID_ILearningModelBinding));

  void bind(String name, Object? value) {
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, int name, VTablePointer value)>()(
        ptr.ref.lpVtbl,
        nameHString,
        value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void bindWithProperties(String name, Object? value, IPropertySet? props) {
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            VTablePointer value, VTablePointer props)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    VTablePointer value, VTablePointer props)>()(
        ptr.ref.lpVtbl,
        nameHString,
        value?.intoBox().ptr.ref.lpVtbl ?? nullptr,
        props?.ptr.ref.lpVtbl ?? nullptr);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void clear() {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
