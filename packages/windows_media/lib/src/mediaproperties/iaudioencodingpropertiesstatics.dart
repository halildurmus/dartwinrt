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

import 'audioencodingproperties.dart';

/// @nodoc
const IID_IAudioEncodingPropertiesStatics =
    '{0cad332c-ebe9-4527-b36d-e42a13cf38db}';

class IAudioEncodingPropertiesStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IAudioEncodingPropertiesStatics.fromPtr(super.ptr);

  factory IAudioEncodingPropertiesStatics.from(IInspectable interface) =>
      interface.cast(IAudioEncodingPropertiesStatics.fromPtr,
          IID_IAudioEncodingPropertiesStatics);

  AudioEncodingProperties? createAac(
      int sampleRate, int channelCount, int bitrate) {
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
                            Uint32 bitrate,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sampleRate,
                    int channelCount, int bitrate, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitrate, value);

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

  AudioEncodingProperties? createAacAdts(
      int sampleRate, int channelCount, int bitrate) {
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
                            Uint32 bitrate,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sampleRate,
                    int channelCount, int bitrate, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitrate, value);

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

  AudioEncodingProperties? createMp3(
      int sampleRate, int channelCount, int bitrate) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 sampleRate,
                            Uint32 channelCount,
                            Uint32 bitrate,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sampleRate,
                    int channelCount, int bitrate, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitrate, value);

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

  AudioEncodingProperties? createPcm(
      int sampleRate, int channelCount, int bitsPerSample) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

  AudioEncodingProperties? createWma(
      int sampleRate, int channelCount, int bitrate) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 sampleRate,
                            Uint32 channelCount,
                            Uint32 bitrate,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sampleRate,
                    int channelCount, int bitrate, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sampleRate, channelCount, bitrate, value);

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
