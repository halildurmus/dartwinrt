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

import '../mediacapturevideoprofilemediadescription.dart';

/// @nodoc
const IID_IMediaFrameSourceInfo2 = '{195a7855-6457-42c6-a769-19b65bd32e6e}';

class IMediaFrameSourceInfo2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IMediaFrameSourceInfo2.fromPtr(super.ptr);

  factory IMediaFrameSourceInfo2.from(IInspectable interface) =>
      IMediaFrameSourceInfo2.fromPtr(
          interface.toInterface(IID_IMediaFrameSourceInfo2));

  String get profileId {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  List<MediaCaptureVideoProfileMediaDescription?>?
      get videoProfileMediaDescription {
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

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<MediaCaptureVideoProfileMediaDescription?>.fromPtr(value,
            iterableIid: '{0895e56d-fe1f-5364-ab67-c597d8970b89}',
            creator: MediaCaptureVideoProfileMediaDescription.fromPtr)
        .toList();
  }
}
