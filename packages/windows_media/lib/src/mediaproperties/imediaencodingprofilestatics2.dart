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
const IID_IMediaEncodingProfileStatics2 =
    '{ce8de74f-6af4-4288-8fe2-79adf1f79a43}';

class IMediaEncodingProfileStatics2 extends IInspectable {
  IMediaEncodingProfileStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaEncodingProfileStatics2Vtbl>().ref;

  final _IMediaEncodingProfileStatics2Vtbl _vtable;

  factory IMediaEncodingProfileStatics2.from(IInspectable interface) =>
      interface.cast(IMediaEncodingProfileStatics2.fromPtr,
          IID_IMediaEncodingProfileStatics2);

  MediaEncodingProfile? createWav(AudioEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateWav.asFunction<
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

  MediaEncodingProfile? createAvi(VideoEncodingQuality quality) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateAvi.asFunction<
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

final class _IMediaEncodingProfileStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateWav;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 quality,
              Pointer<COMObject> value)>> CreateAvi;
}
