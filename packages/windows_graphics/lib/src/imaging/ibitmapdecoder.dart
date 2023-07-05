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

import 'bitmapcodecinformation.dart';
import 'bitmapframe.dart';
import 'bitmappropertiesview.dart';
import 'imagestream.dart';

/// @nodoc
const IID_IBitmapDecoder = '{acef22ba-1d74-4c91-9dfc-9620745233e6}';

class IBitmapDecoder extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IBitmapDecoder.fromPtr(super.ptr);

  factory IBitmapDecoder.from(IInspectable interface) =>
      IBitmapDecoder.fromPtr(interface.toInterface(IID_IBitmapDecoder));

  BitmapPropertiesView? get bitmapContainerProperties {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return BitmapPropertiesView.fromPtr(value);
  }

  BitmapCodecInformation? get decoderInformation {
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
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return BitmapCodecInformation.fromPtr(value);
  }

  int get frameCount {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<ImageStream?> getPreviewAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ImageStream?>.fromPtr(asyncInfo,
        creator: ImageStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<BitmapFrame?> getFrameAsync(int frameIndex) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Uint32 frameIndex,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int frameIndex,
                        Pointer<COMObject> asyncInfo)>()(
            ptr.ref.lpVtbl, frameIndex, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<BitmapFrame?>.fromPtr(asyncInfo,
        creator: BitmapFrame.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
