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
import 'imediadevicecontroller.dart';

/// @nodoc
const IID_IAudioDeviceController = '{edd4a388-79c7-4f7c-90e8-ef934b21580a}';

class IAudioDeviceController extends IInspectable
    implements IMediaDeviceController {
  IAudioDeviceController.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioDeviceControllerVtbl>().ref;

  final _IAudioDeviceControllerVtbl _vtable;

  factory IAudioDeviceController.from(IInspectable interface) => interface.cast(
      IAudioDeviceController.fromPtr, IID_IAudioDeviceController);

  set muted(bool value) {
    final hr = _vtable.put_Muted
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get muted {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Muted.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set volumePercent(double value) {
    final hr = _vtable.put_VolumePercent
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get volumePercent {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_VolumePercent.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  late final _iMediaDeviceController = IMediaDeviceController.from(this);

  @override
  List<IMediaEncodingProperties?> getAvailableMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController
          .getAvailableMediaStreamProperties(mediaStreamType);

  @override
  IMediaEncodingProperties? getMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController.getMediaStreamProperties(mediaStreamType);

  @override
  Future<void> setMediaStreamPropertiesAsync(MediaStreamType mediaStreamType,
          IMediaEncodingProperties? mediaEncodingProperties) =>
      _iMediaDeviceController.setMediaStreamPropertiesAsync(
          mediaStreamType, mediaEncodingProperties);
}

final class _IAudioDeviceControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_Muted;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Muted;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      put_VolumePercent;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_VolumePercent;
}
