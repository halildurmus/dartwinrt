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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IGeocoordinateWithPositionSourceTimestamp =
    '{8543fc02-c9f1-4610-afe0-8bc3a6a87036}';

/// {@category interface}
class IGeocoordinateWithPositionSourceTimestamp extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGeocoordinateWithPositionSourceTimestamp.fromRawPointer(super.ptr);

  factory IGeocoordinateWithPositionSourceTimestamp.from(
          IInspectable interface) =>
      IGeocoordinateWithPositionSourceTimestamp.fromRawPointer(
          interface.toInterface(IID_IGeocoordinateWithPositionSourceTimestamp));

  DateTime? get positionSourceTimestamp {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    final reference = IReference<DateTime?>.fromRawPointer(retValuePtr,
        referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}');
    final value = reference.value;
    reference.release();

    return value;
  }
}
