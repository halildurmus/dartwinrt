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

import 'videostreamdescriptor.dart';

/// @nodoc
const IID_IVideoStreamDescriptor2 = '{8b306e10-453e-4088-832d-c36fa4f94af3}';

class IVideoStreamDescriptor2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IVideoStreamDescriptor2.fromPtr(super.ptr);

  factory IVideoStreamDescriptor2.from(IInspectable interface) =>
      IVideoStreamDescriptor2.fromPtr(
          interface.toInterface(IID_IVideoStreamDescriptor2));

  VideoStreamDescriptor? copy() {
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

    return VideoStreamDescriptor.fromPtr(result);
  }
}