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

import 'containerencodingproperties.dart';

/// @nodoc
const IID_IContainerEncodingProperties2 =
    '{b272c029-ae26-4819-baad-ad7a49b0a876}';

class IContainerEncodingProperties2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IContainerEncodingProperties2.fromPtr(super.ptr);

  factory IContainerEncodingProperties2.from(IInspectable interface) =>
      interface.cast(IContainerEncodingProperties2.fromPtr,
          IID_IContainerEncodingProperties2);

  ContainerEncodingProperties? copy() {
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

    if (result.isNull) {
      free(result);
      return null;
    }

    return ContainerEncodingProperties.fromPtr(result);
  }
}
