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

import '../core/audiostreamdescriptor.dart';
import '../core/videostreamdescriptor.dart';

/// @nodoc
const IID_IMediaEncodingProfile2 = '{349b3e0a-4035-488e-9877-85632865ed10}';

class IMediaEncodingProfile2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IMediaEncodingProfile2.fromPtr(super.ptr);

  factory IMediaEncodingProfile2.from(IInspectable interface) =>
      IMediaEncodingProfile2.fromPtr(
          interface.toInterface(IID_IMediaEncodingProfile2));

  void setAudioTracks(IIterable<AudioStreamDescriptor?>? value) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl,
        value == null
            ? nullptr
            : IInspectable(
                    value.toInterface('{a3e2c972-a171-5b94-8389-e983ebc3f3b9}'))
                .ptr
                .ref
                .lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<AudioStreamDescriptor?> getAudioTracks() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(value,
        iterableIid: '{a3e2c972-a171-5b94-8389-e983ebc3f3b9}',
        creator: AudioStreamDescriptor.fromPtr);
  }

  void setVideoTracks(IIterable<VideoStreamDescriptor?>? value) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl,
        value == null
            ? nullptr
            : IInspectable(
                    value.toInterface('{3acbf03c-0a79-5823-aaa9-d88bc3f8f594}'))
                .ptr
                .ref
                .lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<VideoStreamDescriptor?> getVideoTracks() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(value,
        iterableIid: '{3acbf03c-0a79-5823-aaa9-d88bc3f8f594}',
        creator: VideoStreamDescriptor.fromPtr);
  }
}
