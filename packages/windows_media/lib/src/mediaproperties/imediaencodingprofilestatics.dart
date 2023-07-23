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
import 'package:windows_storage/windows_storage.dart';

import 'audioencodingquality.dart';
import 'mediaencodingprofile.dart';
import 'videoencodingquality.dart';

/// @nodoc
const IID_IMediaEncodingProfileStatics =
    '{197f352c-2ede-4a45-a896-817a4854f8fe}';

class IMediaEncodingProfileStatics extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IMediaEncodingProfileStatics.fromPtr(super.ptr);

  factory IMediaEncodingProfileStatics.from(IInspectable interface) =>
      IMediaEncodingProfileStatics.fromPtr(
          interface.toInterface(IID_IMediaEncodingProfileStatics));

  MediaEncodingProfile? createM4a(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 quality,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int quality,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, quality.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaEncodingProfile.fromPtr(value);
  }

  MediaEncodingProfile? createMp3(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 quality,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int quality,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, quality.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaEncodingProfile.fromPtr(value);
  }

  MediaEncodingProfile? createWma(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 quality,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int quality,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, quality.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaEncodingProfile.fromPtr(value);
  }

  MediaEncodingProfile? createMp4(VideoEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 quality,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int quality,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, quality.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaEncodingProfile.fromPtr(value);
  }

  MediaEncodingProfile? createWmv(VideoEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 quality,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int quality,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, quality.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaEncodingProfile.fromPtr(value);
  }

  Future<MediaEncodingProfile?> createFromFileAsync(IStorageFile? file) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, file.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaEncodingProfile?>.fromPtr(
        operation,
        creator: MediaEncodingProfile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaEncodingProfile?> createFromStreamAsync(
      IRandomAccessStream? stream) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer stream,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer stream,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, stream.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaEncodingProfile?>.fromPtr(
        operation,
        creator: MediaEncodingProfile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
