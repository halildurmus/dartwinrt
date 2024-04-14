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

import 'audioencodingproperties.dart';

/// @nodoc
const IID_IAudioEncodingProperties3 = '{87600341-748c-4f8d-b0fd-10caf08ff087}';

class IAudioEncodingProperties3 extends IInspectable {
  IAudioEncodingProperties3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioEncodingProperties3Vtbl>().ref;

  final _IAudioEncodingProperties3Vtbl _vtable;

  factory IAudioEncodingProperties3.from(IInspectable interface) => interface
      .cast(IAudioEncodingProperties3.fromPtr, IID_IAudioEncodingProperties3);

  AudioEncodingProperties? copy() {
    final result = calloc<COMObject>();

    final hr = _vtable.Copy.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return AudioEncodingProperties.fromPtr(result);
  }
}

final class _IAudioEncodingProperties3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> Copy;
}
