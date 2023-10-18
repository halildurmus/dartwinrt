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

import 'notificationdata.dart';

/// @nodoc
const IID_INotificationDataFactory = '{23c1e33a-1c10-46fb-8040-dec384621cf8}';

class INotificationDataFactory extends IInspectable {
  INotificationDataFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INotificationDataFactoryVtbl>().ref;

  final _INotificationDataFactoryVtbl _vtable;

  factory INotificationDataFactory.from(IInspectable interface) => interface
      .cast(INotificationDataFactory.fromPtr, IID_INotificationDataFactory);

  NotificationData createNotificationDataWithValuesAndSequenceNumber(
      IIterable<IKeyValuePair<String, String>>? initialValues,
      int sequenceNumber) {
    final value = calloc<COMObject>();

    final hr =
        _vtable.CreateNotificationDataWithValuesAndSequenceNumber.asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer initialValues,
                    int sequenceNumber, Pointer<COMObject> value)>()(
            lpVtbl, initialValues.lpVtbl, sequenceNumber, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return NotificationData.fromPtr(value);
  }

  NotificationData createNotificationDataWithValues(
      IIterable<IKeyValuePair<String, String>>? initialValues) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateNotificationDataWithValues.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer initialValues,
            Pointer<COMObject> value)>()(lpVtbl, initialValues.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return NotificationData.fromPtr(value);
  }
}

final class _INotificationDataFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer initialValues,
                  Uint32 sequenceNumber,
                  Pointer<COMObject> value)>>
      CreateNotificationDataWithValuesAndSequenceNumber;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer initialValues,
              Pointer<COMObject> value)>> CreateNotificationDataWithValues;
}
