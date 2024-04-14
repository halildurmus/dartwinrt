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

import '../../mediaproperties/audioencodingproperties.dart';

/// @nodoc
const IID_IMediaFrameFormat2 = '{63856340-5e87-4c10-86d1-6df097a6c6a8}';

class IMediaFrameFormat2 extends IInspectable {
  IMediaFrameFormat2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameFormat2Vtbl>().ref;

  final _IMediaFrameFormat2Vtbl _vtable;

  factory IMediaFrameFormat2.from(IInspectable interface) =>
      interface.cast(IMediaFrameFormat2.fromPtr, IID_IMediaFrameFormat2);

  AudioEncodingProperties? get audioEncodingProperties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AudioEncodingProperties.asFunction<
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

    return AudioEncodingProperties.fromPtr(value);
  }
}

final class _IMediaFrameFormat2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AudioEncodingProperties;
}
