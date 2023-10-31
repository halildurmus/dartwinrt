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

import 'mediaframesourcegetpropertyresult.dart';
import 'mediaframesourcesetpropertystatus.dart';

/// @nodoc
const IID_IMediaFrameSourceController2 =
    '{efc49fd4-fcf2-4a03-b4e4-ac9628739bee}';

class IMediaFrameSourceController2 extends IInspectable {
  IMediaFrameSourceController2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceController2Vtbl>().ref;

  final _IMediaFrameSourceController2Vtbl _vtable;

  factory IMediaFrameSourceController2.from(IInspectable interface) =>
      interface.cast(IMediaFrameSourceController2.fromPtr,
          IID_IMediaFrameSourceController2);

  Future<MediaFrameSourceGetPropertyResult?> getPropertyByExtendedIdAsync(
      List<int> extendedPropertyId, int? maxPropertyValueSize) {
    final operation = calloc<COMObject>();
    final extendedPropertyIdArray = extendedPropertyId.toArray<Uint8>();

    final hr = _vtable.GetPropertyByExtendedIdAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int extendedPropertyIdSize,
                Pointer<Uint8> extendedPropertyId,
                VTablePointer maxPropertyValueSize,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        extendedPropertyId.length,
        extendedPropertyIdArray,
        maxPropertyValueSize?.toReference(IntType.uint32).lpVtbl ?? nullptr,
        operation);

    free(extendedPropertyIdArray);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MediaFrameSourceGetPropertyResult?>.fromPtr(operation,
            tResultObjectCreator: MediaFrameSourceGetPropertyResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<MediaFrameSourceSetPropertyStatus> setPropertyByExtendedIdAsync(
      List<int> extendedPropertyId, List<int> propertyValue) {
    final operation = calloc<COMObject>();
    final extendedPropertyIdArray = extendedPropertyId.toArray<Uint8>();
    final propertyValueArray = propertyValue.toArray<Uint8>();

    final hr = _vtable.SetPropertyByExtendedIdAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int extendedPropertyIdSize,
                Pointer<Uint8> extendedPropertyId,
                int propertyValueSize,
                Pointer<Uint8> propertyValue,
                Pointer<COMObject> operation)>()(
        lpVtbl,
        extendedPropertyId.length,
        extendedPropertyIdArray,
        propertyValue.length,
        propertyValueArray,
        operation);

    free(extendedPropertyIdArray);
    free(propertyValueArray);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<MediaFrameSourceSetPropertyStatus>.fromPtr(operation,
            tResultEnumCreator: MediaFrameSourceSetPropertyStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IMediaFrameSourceController2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 extendedPropertyIdSize,
              Pointer<Uint8> extendedPropertyId,
              VTablePointer maxPropertyValueSize,
              Pointer<COMObject> operation)>> GetPropertyByExtendedIdAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 extendedPropertyIdSize,
              Pointer<Uint8> extendedPropertyId,
              Uint32 propertyValueSize,
              Pointer<Uint8> propertyValue,
              Pointer<COMObject> operation)>> SetPropertyByExtendedIdAsync;
}
