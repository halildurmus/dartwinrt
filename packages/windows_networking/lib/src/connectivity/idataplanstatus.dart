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

import 'dataplanusage.dart';

/// @nodoc
const IID_IDataPlanStatus = '{977a8b8c-3885-40f3-8851-42cd2bd568bb}';

class IDataPlanStatus extends IInspectable {
  IDataPlanStatus.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDataPlanStatusVtbl>().ref;

  final _IDataPlanStatusVtbl _vtable;

  factory IDataPlanStatus.from(IInspectable interface) =>
      interface.cast(IDataPlanStatus.fromPtr, IID_IDataPlanStatus);

  DataPlanUsage? get dataPlanUsage {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DataPlanUsage.asFunction<
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

    return DataPlanUsage.fromPtr(value);
  }

  int? get dataLimitInMegabytes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DataLimitInMegabytes.asFunction<
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
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }

  int? get inboundBitsPerSecond {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InboundBitsPerSecond.asFunction<
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
            referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
        .value;
  }

  int? get outboundBitsPerSecond {
    final value = calloc<COMObject>();

    final hr = _vtable.get_OutboundBitsPerSecond.asFunction<
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
            referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
        .value;
  }

  DateTime? get nextBillingCycle {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NextBillingCycle.asFunction<
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

    return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}')
        .value;
  }

  int? get maxTransferSizeInMegabytes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MaxTransferSizeInMegabytes.asFunction<
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
            referenceIid: '{513ef3af-e784-5325-a91e-97c2b8111cf3}')
        .value;
  }
}

final class _IDataPlanStatusVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DataPlanUsage;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DataLimitInMegabytes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InboundBitsPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_OutboundBitsPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NextBillingCycle;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MaxTransferSizeInMegabytes;
}
