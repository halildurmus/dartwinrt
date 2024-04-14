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

/// @nodoc
const IID_IMediaFrame = '{bfb52f8c-5943-47d8-8e10-05308aa5fbd0}';

class IMediaFrame extends IInspectable implements IClosable {
  IMediaFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameVtbl>().ref;

  final _IMediaFrameVtbl _vtable;

  factory IMediaFrame.from(IInspectable interface) =>
      interface.cast(IMediaFrame.fromPtr, IID_IMediaFrame);

  String get type {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool get isReadOnly {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsReadOnly.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set relativeTime(Duration? value) {
    final hr = _vtable.put_RelativeTime.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Duration? get relativeTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RelativeTime.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  set systemRelativeTime(Duration? value) {
    final hr = _vtable.put_SystemRelativeTime.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Duration? get systemRelativeTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SystemRelativeTime.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  set duration(Duration? value) {
    final hr = _vtable.put_Duration.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Duration? get duration {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Duration.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  set isDiscontinuous(bool value) {
    final hr = _vtable.put_IsDiscontinuous
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get isDiscontinuous {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsDiscontinuous.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  IPropertySet? get extendedProperties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExtendedProperties.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertySet.fromPtr(value);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMediaFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Type;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsReadOnly;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_RelativeTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RelativeTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_SystemRelativeTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SystemRelativeTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Duration;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Duration;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_IsDiscontinuous;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsDiscontinuous;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExtendedProperties;
}
