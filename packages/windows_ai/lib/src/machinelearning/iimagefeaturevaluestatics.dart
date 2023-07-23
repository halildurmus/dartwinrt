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
import 'package:windows_media/windows_media.dart';

import 'imagefeaturevalue.dart';

/// @nodoc
const IID_IImageFeatureValueStatics = '{1bc317fd-23cb-4610-b085-c8e1c87ebaa0}';

class IImageFeatureValueStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IImageFeatureValueStatics.fromPtr(super.ptr);

  factory IImageFeatureValueStatics.from(IInspectable interface) =>
      IImageFeatureValueStatics.fromPtr(
          interface.toInterface(IID_IImageFeatureValueStatics));

  ImageFeatureValue? createFromVideoFrame(VideoFrame? image) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, VTablePointer image,
                        Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer image,
                Pointer<COMObject>
                    result)>()(ptr.ref.lpVtbl, image.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ImageFeatureValue.fromPtr(result);
  }
}
