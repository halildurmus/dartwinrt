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
  IBitmapDecoderStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapDecoderStaticsVtbl>().ref;

  final _IBitmapDecoderStaticsVtbl _vtable;

  factory IBitmapDecoderStatics.from(IInspectable interface) =>
      interface.cast(IBitmapDecoderStatics.fromPtr, IID_IBitmapDecoderStatics);

  Guid get bmpDecoderId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_BmpDecoderId.asFunction<
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
      final hr = _vtable.get_JpegDecoderId.asFunction<
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
      final hr = _vtable.get_PngDecoderId.asFunction<
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
      final hr = _vtable.get_TiffDecoderId.asFunction<
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
      final hr = _vtable.get_GifDecoderId.asFunction<
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
      final hr = _vtable.get_JpegXRDecoderId.asFunction<
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
      final hr = _vtable.get_IcoDecoderId.asFunction<
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

    final hr = _vtable.GetDecoderInformationEnumerator.asFunction<
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

    final hr = _vtable.CreateAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer stream,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, stream.lpVtbl, asyncInfo);

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

    final hr = _vtable.CreateWithIdAsync.asFunction<
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

final class _IBitmapDecoderStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_BmpDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_JpegDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_PngDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_TiffDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_GifDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_JpegXRDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_IcoDecoderId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  Pointer<COMObject> decoderInformationEnumerator)>>
      GetDecoderInformationEnumerator;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer stream,
              Pointer<COMObject> asyncInfo)>> CreateAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              GUID decoderId,
              VTablePointer stream,
              Pointer<COMObject> asyncInfo)>> CreateWithIdAsync;
}
