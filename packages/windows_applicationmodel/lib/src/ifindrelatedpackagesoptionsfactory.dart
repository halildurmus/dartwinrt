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

import 'findrelatedpackagesoptions.dart';
import 'packagerelationship.dart';

/// @nodoc
const IID_IFindRelatedPackagesOptionsFactory =
    '{d7d17254-a4fd-55c4-98cf-f2710b7d8be2}';

class IFindRelatedPackagesOptionsFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFindRelatedPackagesOptionsFactory.fromPtr(super.ptr);

  factory IFindRelatedPackagesOptionsFactory.from(IInspectable interface) =>
      interface.cast(IFindRelatedPackagesOptionsFactory.fromPtr,
          IID_IFindRelatedPackagesOptionsFactory);

  FindRelatedPackagesOptions createInstance(PackageRelationship relationship) {
    final value = calloc<COMObject>();

    final hr = vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 relationship,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int relationship,
                Pointer<COMObject> value)>()(lpVtbl, relationship.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return FindRelatedPackagesOptions.fromPtr(value);
  }
}
