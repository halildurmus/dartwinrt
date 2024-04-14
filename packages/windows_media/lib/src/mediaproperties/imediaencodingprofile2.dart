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

import '../core/audiostreamdescriptor.dart';
import '../core/videostreamdescriptor.dart';

/// @nodoc
const IID_IMediaEncodingProfile2 = '{349b3e0a-4035-488e-9877-85632865ed10}';

class IMediaEncodingProfile2 extends IInspectable {
  IMediaEncodingProfile2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingProfile2Vtbl>().ref;

  final _IMediaEncodingProfile2Vtbl _vtable;

  factory IMediaEncodingProfile2.from(IInspectable interface) => interface.cast(
      IMediaEncodingProfile2.fromPtr, IID_IMediaEncodingProfile2);

  void setAudioTracks(IIterable<AudioStreamDescriptor?>? value) {
    final hr = _vtable.SetAudioTracks.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<AudioStreamDescriptor?> getAudioTracks() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetAudioTracks.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(value,
        iterableIid: '{a3e2c972-a171-5b94-8389-e983ebc3f3b9}',
        tObjectCreator: AudioStreamDescriptor.fromPtr);
  }

  void setVideoTracks(IIterable<VideoStreamDescriptor?>? value) {
    final hr = _vtable.SetVideoTracks.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<VideoStreamDescriptor?> getVideoTracks() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetVideoTracks.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(value,
        iterableIid: '{3acbf03c-0a79-5823-aaa9-d88bc3f8f594}',
        tObjectCreator: VideoStreamDescriptor.fromPtr);
  }
}

final class _IMediaEncodingProfile2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      SetAudioTracks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetAudioTracks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      SetVideoTracks;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetVideoTracks;
}
