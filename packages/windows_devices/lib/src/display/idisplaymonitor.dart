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
import 'package:windows_graphics/windows_graphics.dart';

import 'displaymonitorconnectionkind.dart';
import 'displaymonitordescriptorkind.dart';
import 'displaymonitorphysicalconnectorkind.dart';
import 'displaymonitorusagekind.dart';

/// @nodoc
const IID_IDisplayMonitor = '{1f6b15d4-1d01-4c51-87e2-6f954a772b59}';

class IDisplayMonitor extends IInspectable {
  IDisplayMonitor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDisplayMonitorVtbl>().ref;

  final _IDisplayMonitorVtbl _vtable;

  factory IDisplayMonitor.from(IInspectable interface) =>
      interface.cast(IDisplayMonitor.fromPtr, IID_IDisplayMonitor);

  String get deviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DeviceId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DisplayMonitorConnectionKind get connectionKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ConnectionKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DisplayMonitorConnectionKind.from(value.value);
    } finally {
      free(value);
    }
  }

  DisplayMonitorPhysicalConnectorKind get physicalConnector {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PhysicalConnector.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DisplayMonitorPhysicalConnectorKind.from(value.value);
    } finally {
      free(value);
    }
  }

  String get displayAdapterDeviceId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayAdapterDeviceId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DisplayAdapterId get displayAdapterId {
    final value = calloc<NativeDisplayAdapterId>();

    try {
      final hr = _vtable.get_DisplayAdapterId.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeDisplayAdapterId> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  int get displayAdapterTargetId {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_DisplayAdapterTargetId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  DisplayMonitorUsageKind get usageKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_UsageKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DisplayMonitorUsageKind.from(value.value);
    } finally {
      free(value);
    }
  }

  SizeInt32 get nativeResolutionInRawPixels {
    final value = calloc<NativeSizeInt32>();

    try {
      final hr = _vtable.get_NativeResolutionInRawPixels.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeSizeInt32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Size? get physicalSizeInInches {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PhysicalSizeInInches.asFunction<
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

    return IReference<Size?>.fromPtr(value,
            referenceIid: '{61723086-8e53-5276-9f36-2a4bb93e2b75}')
        .value;
  }

  double get rawDpiX {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_RawDpiX.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get rawDpiY {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_RawDpiY.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Point get redPrimary {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.get_RedPrimary.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Point get greenPrimary {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.get_GreenPrimary.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Point get bluePrimary {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.get_BluePrimary.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Point get whitePoint {
    final value = calloc<NativePoint>();

    try {
      final hr = _vtable.get_WhitePoint.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativePoint> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  double get maxLuminanceInNits {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_MaxLuminanceInNits.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get minLuminanceInNits {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_MinLuminanceInNits.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get maxAverageFullFrameLuminanceInNits {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_MaxAverageFullFrameLuminanceInNits.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<int> getDescriptor(DisplayMonitorDescriptorKind descriptorKind) {
    final resultSize = calloc<Uint32>();
    final result = calloc<Pointer<Uint8>>();

    try {
      final hr = _vtable.GetDescriptor.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int descriptorKind,
                  Pointer<Uint32> resultSize,
                  Pointer<Pointer<Uint8>> result)>()(
          lpVtbl, descriptorKind.value, resultSize, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value.toList(length: resultSize.value);
    } finally {
      free(resultSize);
      free(result.value);
      free(result);
    }
  }
}

final class _IDisplayMonitorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ConnectionKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PhysicalConnector;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayAdapterDeviceId;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeDisplayAdapterId> value)>>
      get_DisplayAdapterId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_DisplayAdapterTargetId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_UsageKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeSizeInt32> value)>>
      get_NativeResolutionInRawPixels;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PhysicalSizeInInches;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_RawDpiX;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_RawDpiY;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> value)>>
      get_RedPrimary;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> value)>>
      get_GreenPrimary;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> value)>>
      get_BluePrimary;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativePoint> value)>>
      get_WhitePoint;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_MaxLuminanceInNits;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_MinLuminanceInNits;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_MaxAverageFullFrameLuminanceInNits;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 descriptorKind,
              Pointer<Uint32> resultSize,
              Pointer<Pointer<Uint8>> result)>> GetDescriptor;
}
