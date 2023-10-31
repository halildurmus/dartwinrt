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

import '../capture/mediastreamtype.dart';
import '../mediaproperties/imediaencodingproperties.dart';

/// @nodoc
const IID_IMediaDeviceController = '{f6f8f5ce-209a-48fb-86fc-d44578f317e6}';

class IMediaDeviceController extends IInspectable {
  IMediaDeviceController.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaDeviceControllerVtbl>().ref;

  final _IMediaDeviceControllerVtbl _vtable;

  factory IMediaDeviceController.from(IInspectable interface) => interface.cast(
      IMediaDeviceController.fromPtr, IID_IMediaDeviceController);

  List<IMediaEncodingProperties?> getAvailableMediaStreamProperties(
      MediaStreamType mediaStreamType) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetAvailableMediaStreamProperties.asFunction<
        int Function(VTablePointer lpVtbl, int mediaStreamType,
            Pointer<COMObject> value)>()(lpVtbl, mediaStreamType.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<IMediaEncodingProperties?>.fromPtr(value,
            iterableIid: '{d7fc75d5-3492-5bbb-9b34-dac3e24e79d0}',
            tObjectCreator: IMediaEncodingProperties.fromPtr)
        .toList();
  }

  IMediaEncodingProperties? getMediaStreamProperties(
      MediaStreamType mediaStreamType) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetMediaStreamProperties.asFunction<
        int Function(VTablePointer lpVtbl, int mediaStreamType,
            Pointer<COMObject> value)>()(lpVtbl, mediaStreamType.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IMediaEncodingProperties.fromPtr(value);
  }

  Future<void> setMediaStreamPropertiesAsync(MediaStreamType mediaStreamType,
      IMediaEncodingProperties? mediaEncodingProperties) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetMediaStreamPropertiesAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int mediaStreamType,
                VTablePointer mediaEncodingProperties,
                Pointer<COMObject> asyncInfo)>()(lpVtbl, mediaStreamType.value,
        mediaEncodingProperties.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IMediaDeviceControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 mediaStreamType,
              Pointer<COMObject> value)>> GetAvailableMediaStreamProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 mediaStreamType,
              Pointer<COMObject> value)>> GetMediaStreamProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 mediaStreamType,
              VTablePointer mediaEncodingProperties,
              Pointer<COMObject> asyncInfo)>> SetMediaStreamPropertiesAsync;
}
