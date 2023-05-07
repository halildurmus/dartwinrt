// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'percentformatter.dart';

/// @nodoc
const IID_IPercentFormatterFactory = '{b7828aef-fed4-4018-a6e2-e09961e03765}';

/// {@category interface}
class IPercentFormatterFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IPercentFormatterFactory.fromPtr(super.ptr);

  factory IPercentFormatterFactory.from(IInspectable interface) =>
      IPercentFormatterFactory.fromPtr(
          interface.toInterface(IID_IPercentFormatterFactory));

  PercentFormatter createPercentFormatter(
      IIterable<String> languages, String geographicRegion) {
    final retValuePtr = calloc<COMObject>();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;
    final geographicRegionHString = geographicRegion.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer languages,
                            IntPtr geographicRegion,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer languages,
                    int geographicRegion, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, languagesPtr, geographicRegionHString, retValuePtr);

    WindowsDeleteString(geographicRegionHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return PercentFormatter.fromPtr(retValuePtr);
  }
}
