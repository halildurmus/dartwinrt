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

import 'packageupdateavailability.dart';

/// @nodoc
const IID_IPackageUpdateAvailabilityResult =
    '{114e5009-199a-48a1-a079-313c45634a71}';

class IPackageUpdateAvailabilityResult extends IInspectable {
  IPackageUpdateAvailabilityResult.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IPackageUpdateAvailabilityResultVtbl>().ref;

  final _IPackageUpdateAvailabilityResultVtbl _vtable;

  factory IPackageUpdateAvailabilityResult.from(IInspectable interface) =>
      interface.cast(IPackageUpdateAvailabilityResult.fromPtr,
          IID_IPackageUpdateAvailabilityResult);

  PackageUpdateAvailability get availability {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Availability.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PackageUpdateAvailability.from(value.value);
    } finally {
      free(value);
    }
  }

  int get extendedError {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ExtendedError.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IPackageUpdateAvailabilityResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Availability;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ExtendedError;
}
