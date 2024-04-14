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

import 'geolocator.dart';
import 'geoposition.dart';
import 'igeolocator.dart';
import 'positionaccuracy.dart';
import 'positionstatus.dart';

/// @nodoc
const IID_IGeolocatorWithScalarAccuracy =
    '{96f5d3c1-b80f-460a-994d-a96c47a51aa4}';

class IGeolocatorWithScalarAccuracy extends IInspectable
    implements IGeolocator {
  IGeolocatorWithScalarAccuracy.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGeolocatorWithScalarAccuracyVtbl>().ref;

  final _IGeolocatorWithScalarAccuracyVtbl _vtable;

  factory IGeolocatorWithScalarAccuracy.from(IInspectable interface) =>
      interface.cast(IGeolocatorWithScalarAccuracy.fromPtr,
          IID_IGeolocatorWithScalarAccuracy);

  int? get desiredAccuracyInMeters {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DesiredAccuracyInMeters.asFunction<
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

  set desiredAccuracyInMeters(int? value) {
    final hr = _vtable.put_DesiredAccuracyInMeters.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference(IntType.uint32).lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iGeolocator = IGeolocator.from(this);

  @override
  PositionAccuracy get desiredAccuracy => _iGeolocator.desiredAccuracy;

  @override
  set desiredAccuracy(PositionAccuracy value) =>
      _iGeolocator.desiredAccuracy = value;

  @override
  double get movementThreshold => _iGeolocator.movementThreshold;

  @override
  set movementThreshold(double value) => _iGeolocator.movementThreshold = value;

  @override
  int get reportInterval => _iGeolocator.reportInterval;

  @override
  set reportInterval(int value) => _iGeolocator.reportInterval = value;

  @override
  PositionStatus get locationStatus => _iGeolocator.locationStatus;

  @override
  Future<Geoposition?> getGeopositionAsync() =>
      _iGeolocator.getGeopositionAsync();

  @override
  Future<Geoposition?> getGeopositionAsyncWithAgeAndTimeout(
          Duration maximumAge, Duration timeout) =>
      _iGeolocator.getGeopositionAsyncWithAgeAndTimeout(maximumAge, timeout);

  @override
  int add_PositionChanged(Pointer<COMObject> handler) =>
      _iGeolocator.add_PositionChanged(handler);

  @override
  void remove_PositionChanged(int token) =>
      _iGeolocator.remove_PositionChanged(token);

  @override
  int add_StatusChanged(Pointer<COMObject> handler) =>
      _iGeolocator.add_StatusChanged(handler);

  @override
  void remove_StatusChanged(int token) =>
      _iGeolocator.remove_StatusChanged(token);
}

final class _IGeolocatorWithScalarAccuracyVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DesiredAccuracyInMeters;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_DesiredAccuracyInMeters;
}
