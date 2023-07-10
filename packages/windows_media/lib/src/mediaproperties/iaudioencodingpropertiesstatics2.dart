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

import 'audioencodingproperties.dart';

/// @nodoc
const IID_IAudioEncodingPropertiesStatics2 =
    '{7489316f-77a0-433d-8ed5-4040280e8665}';

class IAudioEncodingPropertiesStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IAudioEncodingPropertiesStatics2.fromPtr(super.ptr);

  factory IAudioEncodingPropertiesStatics2.from(IInspectable interface) =>
      IAudioEncodingPropertiesStatics2.fromPtr(
          interface.toInterface(IID_IAudioEncodingPropertiesStatics2));

  AudioEncodingProperties? createAlac(
      int sampleRate, int channelCount, int bitsPerSample) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 sampleRate,
                            Uint32 channelCount,
                            Uint32 bitsPerSample,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int sampleRate,
                    int channelCount,
                    int bitsPerSample,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitsPerSample, value);

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

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 sampleRate,
                            Uint32 channelCount,
                            Uint32 bitsPerSample,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int sampleRate,
                    int channelCount,
                    int bitsPerSample,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitsPerSample, value);

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
