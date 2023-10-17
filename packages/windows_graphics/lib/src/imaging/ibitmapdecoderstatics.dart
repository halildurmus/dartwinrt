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

import 'bitmapcodecinformation.dart';
import 'bitmapdecoder.dart';

/// @nodoc
const IID_IBitmapDecoderStatics = '{438ccb26-bcef-4e95-bad6-23a822e58d01}';

class IBitmapDecoderStatics extends IInspectable {
  IBitmapDecoderStatics.fromPtr(super.ptr);

  factory IBitmapDecoderStatics.from(IInspectable interface) =>
      interface.cast(IBitmapDecoderStatics.fromPtr, IID_IBitmapDecoderStatics);

  Guid get bmpDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get jpegDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get pngDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get tiffDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get gifDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get jpegXRDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Guid get icoDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<GUID> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  List<BitmapCodecInformation?> getDecoderInformationEnumerator() {
    final decoderInformationEnumerator = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Pointer<COMObject>
                                    decoderInformationEnumerator)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl,
                        Pointer<COMObject> decoderInformationEnumerator)>()(
            lpVtbl, decoderInformationEnumerator);

    if (FAILED(hr)) {
      free(decoderInformationEnumerator);
      throwWindowsException(hr);
    }

    return IVectorView<BitmapCodecInformation?>.fromPtr(
            decoderInformationEnumerator,
            iterableIid: '{2b6bdb90-a4eb-5142-b582-3ccb1edc5789}',
            creator: BitmapCodecInformation.fromPtr)
        .toList();
  }

  Future<BitmapDecoder?> createAsync(IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(14)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer stream,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer stream,
                        Pointer<COMObject> asyncInfo)>()(
            lpVtbl, stream.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<BitmapDecoder?>.fromPtr(asyncInfo,
        creator: BitmapDecoder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<BitmapDecoder?> createWithIdAsync(
      Guid decoderId, IRandomAccessStream? stream) {
    final asyncInfo = calloc<COMObject>();
    final decoderIdNativeStructPtr = decoderId.toNativeGUID();

    final hr =
        vtable
                .elementAt(15)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                GUID decoderId,
                                VTablePointer stream,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, GUID decoderId,
                        VTablePointer stream, Pointer<COMObject> asyncInfo)>()(
            lpVtbl, decoderIdNativeStructPtr.ref, stream.lpVtbl, asyncInfo);

    free(decoderIdNativeStructPtr);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<BitmapDecoder?>.fromPtr(asyncInfo,
        creator: BitmapDecoder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
