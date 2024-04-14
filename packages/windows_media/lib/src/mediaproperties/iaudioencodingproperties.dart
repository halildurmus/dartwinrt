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

import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';

/// @nodoc
const IID_IAudioEncodingProperties = '{62bc7a16-005c-4b3b-8a0b-0a090e9687f3}';

class IAudioEncodingProperties extends IInspectable
    implements IMediaEncodingProperties {
  IAudioEncodingProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioEncodingPropertiesVtbl>().ref;

  final _IAudioEncodingPropertiesVtbl _vtable;

  factory IAudioEncodingProperties.from(IInspectable interface) => interface
      .cast(IAudioEncodingProperties.fromPtr, IID_IAudioEncodingProperties);

  set bitrate(int value) {
    final hr = _vtable.put_Bitrate
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get bitrate {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Bitrate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set channelCount(int value) {
    final hr = _vtable.put_ChannelCount
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get channelCount {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ChannelCount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set sampleRate(int value) {
    final hr = _vtable.put_SampleRate
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get sampleRate {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_SampleRate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set bitsPerSample(int value) {
    final hr = _vtable.put_BitsPerSample
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get bitsPerSample {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_BitsPerSample.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;
}

final class _IAudioEncodingPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_Bitrate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Bitrate;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_ChannelCount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ChannelCount;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_SampleRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_SampleRate;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_BitsPerSample;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_BitsPerSample;
}
