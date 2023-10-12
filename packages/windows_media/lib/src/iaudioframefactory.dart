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

import 'audioframe.dart';

/// @nodoc
const IID_IAudioFrameFactory = '{91a90ade-2422-40a6-b9ad-30d02404317d}';

class IAudioFrameFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IAudioFrameFactory.fromPtr(super.ptr);

  factory IAudioFrameFactory.from(IInspectable interface) =>
      interface.cast(IAudioFrameFactory.fromPtr, IID_IAudioFrameFactory);

  AudioFrame create(int capacity) {
    final value = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 capacity,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int capacity,
                Pointer<COMObject> value)>()(lpVtbl, capacity, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return AudioFrame.fromPtr(value);
  }
}
