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

import 'audiostreamdescriptor.dart';

/// @nodoc
const IID_IAudioStreamDescriptor3 = '{4d220da1-8e83-44ef-8973-2f63e993f36b}';

class IAudioStreamDescriptor3 extends IInspectable {
  IAudioStreamDescriptor3.fromPtr(super.ptr);

  factory IAudioStreamDescriptor3.from(IInspectable interface) => interface
      .cast(IAudioStreamDescriptor3.fromPtr, IID_IAudioStreamDescriptor3);

  AudioStreamDescriptor? copy() {
    final result = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return AudioStreamDescriptor.fromPtr(result);
  }
}
