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
  IMediaEncodingProfileStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingProfileStaticsVtbl>().ref;

  final _IMediaEncodingProfileStaticsVtbl _vtable;

  factory IMediaEncodingProfileStatics.from(IInspectable interface) =>
      interface.cast(IMediaEncodingProfileStatics.fromPtr,
          IID_IMediaEncodingProfileStatics);

  MediaEncodingProfile? createM4a(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateM4a.asFunction<
        int Function(VTablePointer lpVtbl, int quality,
            Pointer<COMObject> value)>()(lpVtbl, quality.value, value);

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

    final hr = _vtable.CreateMp3.asFunction<
        int Function(VTablePointer lpVtbl, int quality,
            Pointer<COMObject> value)>()(lpVtbl, quality.value, value);

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

    final hr = _vtable.CreateWma.asFunction<
        int Function(VTablePointer lpVtbl, int quality,
            Pointer<COMObject> value)>()(lpVtbl, quality.value, value);

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

    final hr = _vtable.CreateMp4.asFunction<
        int Function(VTablePointer lpVtbl, int quality,
            Pointer<COMObject> value)>()(lpVtbl, quality.value, value);

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

    final hr = _vtable.CreateWmv.asFunction<
        int Function(VTablePointer lpVtbl, int quality,
            Pointer<COMObject> value)>()(lpVtbl, quality.value, value);

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

    final hr = _vtable.CreateFromFileAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer file,
            Pointer<COMObject> operation)>()(lpVtbl, file.lpVtbl, operation);

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

    final hr = _vtable.CreateFromStreamAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer stream,
            Pointer<COMObject> operation)>()(lpVtbl, stream.lpVtbl, operation);

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

final class _IMediaEncodingProfileStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateM4a;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateMp3;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateWma;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateMp4;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateWmv;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> operation)>> CreateFromFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer stream,
              Pointer<COMObject> operation)>> CreateFromStreamAsync;
}
