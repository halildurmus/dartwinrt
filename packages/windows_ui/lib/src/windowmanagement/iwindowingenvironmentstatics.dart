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

import 'windowingenvironment.dart';
import 'windowingenvironmentkind.dart';

/// @nodoc
const IID_IWindowingEnvironmentStatics =
    '{874e9fb7-c642-55ab-8aa2-162f734a9a72}';

class IWindowingEnvironmentStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IWindowingEnvironmentStatics.fromPtr(super.ptr);

  factory IWindowingEnvironmentStatics.from(IInspectable interface) =>
      interface.cast(IWindowingEnvironmentStatics.fromPtr,
          IID_IWindowingEnvironmentStatics);

  List<WindowingEnvironment?> findAll() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<WindowingEnvironment?>.fromPtr(result,
            iterableIid: '{626a6481-0174-5a56-84c9-e8d4c48cfb1b}',
            creator: WindowingEnvironment.fromPtr)
        .toList();
  }

  List<WindowingEnvironment?> findAllWithKind(WindowingEnvironmentKind kind) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 kind,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int kind,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, kind.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<WindowingEnvironment?>.fromPtr(result,
            iterableIid: '{626a6481-0174-5a56-84c9-e8d4c48cfb1b}',
            creator: WindowingEnvironment.fromPtr)
        .toList();
  }
}
