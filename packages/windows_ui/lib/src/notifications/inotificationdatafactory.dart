// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'notificationdata.dart';

/// @nodoc
const IID_INotificationDataFactory = '{23c1e33a-1c10-46fb-8040-dec384621cf8}';

/// {@category interface}
class INotificationDataFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  INotificationDataFactory.fromRawPointer(super.ptr);

  factory INotificationDataFactory.from(IInspectable interface) =>
      INotificationDataFactory.fromRawPointer(
          interface.toInterface(IID_INotificationDataFactory));

  NotificationData createNotificationDataWithValuesAndSequenceNumber(
      IIterable<IKeyValuePair<String, String>> initialValues,
      int sequenceNumber) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, LPVTBL initialValues,
                            Uint32 sequenceNumber, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, LPVTBL initialValues, int sequenceNumber,
                    Pointer<COMObject>)>()(ptr.ref.lpVtbl,
        initialValues.ptr.ref.lpVtbl, sequenceNumber, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return NotificationData.fromRawPointer(retValuePtr);
  }

  NotificationData createNotificationDataWithValues(
      IIterable<IKeyValuePair<String, String>> initialValues) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, LPVTBL initialValues,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, LPVTBL initialValues, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, initialValues.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return NotificationData.fromRawPointer(retValuePtr);
  }
}
