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
import 'containerencodingproperties.dart';
import 'videoencodingproperties.dart';

/// @nodoc
const IID_IMediaEncodingProfile = '{e7dbf5a8-1db9-4783-876b-3dfe12acfdb3}';

class IMediaEncodingProfile extends IInspectable {
  IMediaEncodingProfile.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingProfileVtbl>().ref;

  final _IMediaEncodingProfileVtbl _vtable;

  factory IMediaEncodingProfile.from(IInspectable interface) =>
      interface.cast(IMediaEncodingProfile.fromPtr, IID_IMediaEncodingProfile);

  set audio(AudioEncodingProperties? value) {
    final hr = _vtable.put_Audio.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  AudioEncodingProperties? get audio {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Audio.asFunction<
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

  set video(VideoEncodingProperties? value) {
    final hr = _vtable.put_Video.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  VideoEncodingProperties? get video {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Video.asFunction<
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

    return VideoEncodingProperties.fromPtr(value);
  }

  set container(ContainerEncodingProperties? value) {
    final hr = _vtable.put_Container.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  ContainerEncodingProperties? get container {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Container.asFunction<
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

    return ContainerEncodingProperties.fromPtr(value);
  }
}

final class _IMediaEncodingProfileVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Audio;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Audio;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Video;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Video;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Container;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Container;
}
