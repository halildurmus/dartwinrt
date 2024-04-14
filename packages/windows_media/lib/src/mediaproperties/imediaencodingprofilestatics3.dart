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

import 'audioencodingquality.dart';
import 'mediaencodingprofile.dart';
import 'videoencodingquality.dart';

/// @nodoc
const IID_IMediaEncodingProfileStatics3 =
    '{90dac5aa-cf76-4294-a9ed-1a1420f51f6b}';

class IMediaEncodingProfileStatics3 extends IInspectable {
  IMediaEncodingProfileStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingProfileStatics3Vtbl>().ref;

  final _IMediaEncodingProfileStatics3Vtbl _vtable;

  factory IMediaEncodingProfileStatics3.from(IInspectable interface) =>
      interface.cast(IMediaEncodingProfileStatics3.fromPtr,
          IID_IMediaEncodingProfileStatics3);

  MediaEncodingProfile? createAlac(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateAlac.asFunction<
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

  MediaEncodingProfile? createFlac(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFlac.asFunction<
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

  MediaEncodingProfile? createHevc(VideoEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateHevc.asFunction<
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
}

final class _IMediaEncodingProfileStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateAlac;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateFlac;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateHevc;
}
