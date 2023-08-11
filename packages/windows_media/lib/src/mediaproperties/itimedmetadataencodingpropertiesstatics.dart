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

import 'timedmetadataencodingproperties.dart';

/// @nodoc
const IID_ITimedMetadataEncodingPropertiesStatics =
    '{6629bb67-6e55-5643-89a0-7a7e8d85b52c}';

class ITimedMetadataEncodingPropertiesStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITimedMetadataEncodingPropertiesStatics.fromPtr(super.ptr);

  factory ITimedMetadataEncodingPropertiesStatics.from(
          IInspectable interface) =>
      interface.cast(ITimedMetadataEncodingPropertiesStatics.fromPtr,
          IID_ITimedMetadataEncodingPropertiesStatics);

  TimedMetadataEncodingProperties? createPgs() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(result);
  }

  TimedMetadataEncodingProperties? createSrt() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(result);
  }

  TimedMetadataEncodingProperties? createSsa(List<int> formatUserData) {
    final result = calloc<COMObject>();
    final formatUserDataArray = formatUserData.toArray<Uint8>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 formatUserDataSize,
                            Pointer<Uint8> formatUserData,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int formatUserDataSize,
                    Pointer<Uint8> formatUserData,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, formatUserData.length, formatUserDataArray, result);

    free(formatUserDataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(result);
  }

  TimedMetadataEncodingProperties? createVobSub(List<int> formatUserData) {
    final result = calloc<COMObject>();
    final formatUserDataArray = formatUserData.toArray<Uint8>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 formatUserDataSize,
                            Pointer<Uint8> formatUserData,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int formatUserDataSize,
                    Pointer<Uint8> formatUserData,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, formatUserData.length, formatUserDataArray, result);

    free(formatUserDataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(result);
  }
}
