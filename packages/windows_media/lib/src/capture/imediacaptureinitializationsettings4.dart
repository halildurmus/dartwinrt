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

import 'mediacapturevideoprofile.dart';
import 'mediacapturevideoprofilemediadescription.dart';

/// @nodoc
const IID_IMediaCaptureInitializationSettings4 =
    '{f502a537-4cb7-4d28-95ed-4f9f012e0518}';

class IMediaCaptureInitializationSettings4 extends IInspectable {
  IMediaCaptureInitializationSettings4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureInitializationSettings4Vtbl>()
            .ref;

  final _IMediaCaptureInitializationSettings4Vtbl _vtable;

  factory IMediaCaptureInitializationSettings4.from(IInspectable interface) =>
      interface.cast(IMediaCaptureInitializationSettings4.fromPtr,
          IID_IMediaCaptureInitializationSettings4);

  MediaCaptureVideoProfile? get videoProfile {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoProfile.asFunction<
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

    return MediaCaptureVideoProfile.fromPtr(value);
  }

  set videoProfile(MediaCaptureVideoProfile? value) {
    final hr = _vtable.put_VideoProfile.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureVideoProfileMediaDescription? get previewMediaDescription {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PreviewMediaDescription.asFunction<
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

    return MediaCaptureVideoProfileMediaDescription.fromPtr(value);
  }

  set previewMediaDescription(MediaCaptureVideoProfileMediaDescription? value) {
    final hr = _vtable.put_PreviewMediaDescription.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureVideoProfileMediaDescription? get recordMediaDescription {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RecordMediaDescription.asFunction<
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

    return MediaCaptureVideoProfileMediaDescription.fromPtr(value);
  }

  set recordMediaDescription(MediaCaptureVideoProfileMediaDescription? value) {
    final hr = _vtable.put_RecordMediaDescription.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaCaptureVideoProfileMediaDescription? get photoMediaDescription {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PhotoMediaDescription.asFunction<
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

    return MediaCaptureVideoProfileMediaDescription.fromPtr(value);
  }

  set photoMediaDescription(MediaCaptureVideoProfileMediaDescription? value) {
    final hr = _vtable.put_PhotoMediaDescription.asFunction<
        int Function(
            VTablePointer lpVtbl, VTablePointer value)>()(lpVtbl, value.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IMediaCaptureInitializationSettings4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_VideoProfile;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PreviewMediaDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_PreviewMediaDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RecordMediaDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_RecordMediaDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PhotoMediaDescription;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_PhotoMediaDescription;
}
