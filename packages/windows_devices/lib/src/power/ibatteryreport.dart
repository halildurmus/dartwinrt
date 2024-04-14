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
import 'package:windows_system/windows_system.dart';

/// @nodoc
const IID_IBatteryReport = '{c9858c3a-4e13-420a-a8d0-24f18f395401}';

class IBatteryReport extends IInspectable {
  IBatteryReport.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBatteryReportVtbl>().ref;

  final _IBatteryReportVtbl _vtable;

  factory IBatteryReport.from(IInspectable interface) =>
      interface.cast(IBatteryReport.fromPtr, IID_IBatteryReport);

  int? get chargeRateInMilliwatts {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ChargeRateInMilliwatts.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{548cefbd-bc8a-5fa0-8df2-957440fc8bf4}')
        .value;
  }

  int? get designCapacityInMilliwattHours {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DesignCapacityInMilliwattHours.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{548cefbd-bc8a-5fa0-8df2-957440fc8bf4}')
        .value;
  }

  int? get fullChargeCapacityInMilliwattHours {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FullChargeCapacityInMilliwattHours.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{548cefbd-bc8a-5fa0-8df2-957440fc8bf4}')
        .value;
  }

  int? get remainingCapacityInMilliwattHours {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RemainingCapacityInMilliwattHours.asFunction<
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

    return IReference<int?>.fromPtr(value,
            referenceIid: '{548cefbd-bc8a-5fa0-8df2-957440fc8bf4}')
        .value;
  }

  BatteryStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BatteryStatus.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IBatteryReportVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ChargeRateInMilliwatts;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DesignCapacityInMilliwattHours;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FullChargeCapacityInMilliwattHours;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RemainingCapacityInMilliwattHours;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
}
