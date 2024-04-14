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

import '../devices/mediacapturefocusstate.dart';
import '../mediaproperties/mediaratio.dart';
import 'whitebalancegain.dart';

/// @nodoc
const IID_ICapturedFrameControlValues2 =
    '{500b2b88-06d2-4aa7-a7db-d37af73321d8}';

class ICapturedFrameControlValues2 extends IInspectable {
  ICapturedFrameControlValues2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICapturedFrameControlValues2Vtbl>().ref;

  final _ICapturedFrameControlValues2Vtbl _vtable;

  factory ICapturedFrameControlValues2.from(IInspectable interface) =>
      interface.cast(ICapturedFrameControlValues2.fromPtr,
          IID_ICapturedFrameControlValues2);

  MediaCaptureFocusState? get focusState {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FocusState.asFunction<
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

    return IReference<MediaCaptureFocusState?>.fromPtr(value,
            referenceIid: '{58820185-5da0-5faa-86da-9bd9f03974fa}',
            tEnumCreator: MediaCaptureFocusState.from)
        .value;
  }

  double? get isoDigitalGain {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsoDigitalGain.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  double? get isoAnalogGain {
    final value = calloc<COMObject>();

    final hr = _vtable.get_IsoAnalogGain.asFunction<
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

    return IReference<double?>.fromPtr(value,
            referenceIid: '{2f2d6c29-5473-5f3e-92e7-96572bb990e2}')
        .value;
  }

  MediaRatio? get sensorFrameRate {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SensorFrameRate.asFunction<
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

    return MediaRatio.fromPtr(value);
  }

  WhiteBalanceGain? get whiteBalanceGain {
    final value = calloc<COMObject>();

    final hr = _vtable.get_WhiteBalanceGain.asFunction<
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

    return IReference<WhiteBalanceGain?>.fromPtr(value,
            referenceIid: '{79c7838a-39e2-5287-ac3b-b118db251002}')
        .value;
  }
}

final class _ICapturedFrameControlValues2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FocusState;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsoDigitalGain;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_IsoAnalogGain;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SensorFrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_WhiteBalanceGain;
}
