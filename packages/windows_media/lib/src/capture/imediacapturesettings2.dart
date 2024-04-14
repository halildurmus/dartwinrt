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

import '../audioprocessing.dart';
import 'mediacategory.dart';

/// @nodoc
const IID_IMediaCaptureSettings2 = '{6f9e7cfb-fa9f-4b13-9cbe-5ab94f1f3493}';

class IMediaCaptureSettings2 extends IInspectable {
  IMediaCaptureSettings2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCaptureSettings2Vtbl>().ref;

  final _IMediaCaptureSettings2Vtbl _vtable;

  factory IMediaCaptureSettings2.from(IInspectable interface) => interface.cast(
      IMediaCaptureSettings2.fromPtr, IID_IMediaCaptureSettings2);

  bool get concurrentRecordAndPhotoSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ConcurrentRecordAndPhotoSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get concurrentRecordAndPhotoSequenceSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_ConcurrentRecordAndPhotoSequenceSupported
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get cameraSoundRequiredForRegion {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CameraSoundRequiredForRegion.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int? get horizontal35mmEquivalentFocalLength {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Horizontal35mmEquivalentFocalLength.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  int? get pitchOffsetDegrees {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PitchOffsetDegrees.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{548cefbd-bc8a-5fa0-8df2-957440fc8bf4}')
        .value;
  }

  int? get vertical35mmEquivalentFocalLength {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Vertical35mmEquivalentFocalLength.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  MediaCategory get mediaCategory {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MediaCategory.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaCategory.from(value.value);
    } finally {
      free(value);
    }
  }

  AudioProcessing get audioProcessing {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_AudioProcessing.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AudioProcessing.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureSettings2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ConcurrentRecordAndPhotoSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_ConcurrentRecordAndPhotoSequenceSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CameraSoundRequiredForRegion;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Horizontal35mmEquivalentFocalLength;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PitchOffsetDegrees;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Vertical35mmEquivalentFocalLength;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MediaCategory;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_AudioProcessing;
}
