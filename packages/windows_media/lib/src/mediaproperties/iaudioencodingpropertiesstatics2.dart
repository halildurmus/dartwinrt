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
const IID_IAudioEncodingPropertiesStatics2 =
    '{7489316f-77a0-433d-8ed5-4040280e8665}';

class IAudioEncodingPropertiesStatics2 extends IInspectable {
  IAudioEncodingPropertiesStatics2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IAudioEncodingPropertiesStatics2Vtbl>().ref;

  final _IAudioEncodingPropertiesStatics2Vtbl _vtable;

  factory IAudioEncodingPropertiesStatics2.from(IInspectable interface) =>
      interface.cast(IAudioEncodingPropertiesStatics2.fromPtr,
          IID_IAudioEncodingPropertiesStatics2);

  AudioEncodingProperties? createAlac(
      int sampleRate, int channelCount, int bitsPerSample) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateAlac.asFunction<
            int Function(VTablePointer lpVtbl, int sampleRate, int channelCount,
                int bitsPerSample, Pointer<COMObject> value)>()(
        lpVtbl, sampleRate, channelCount, bitsPerSample, value);

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

  AudioEncodingProperties? createFlac(
      int sampleRate, int channelCount, int bitsPerSample) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFlac.asFunction<
            int Function(VTablePointer lpVtbl, int sampleRate, int channelCount,
                int bitsPerSample, Pointer<COMObject> value)>()(
        lpVtbl, sampleRate, channelCount, bitsPerSample, value);

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

final class _IAudioEncodingPropertiesStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 sampleRate,
              Uint32 channelCount,
              Uint32 bitsPerSample,
              Pointer<COMObject> value)>> CreateAlac;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 sampleRate,
              Uint32 channelCount,
              Uint32 bitsPerSample,
              Pointer<COMObject> value)>> CreateFlac;
}
