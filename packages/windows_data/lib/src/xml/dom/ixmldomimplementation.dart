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

/// @nodoc
const IID_IXmlDomImplementation = '{6de58132-f11d-4fbb-8cc6-583cba93112f}';

/// {@category interface}
class IXmlDomImplementation extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IXmlDomImplementation.fromRawPointer(super.ptr);

  factory IXmlDomImplementation.from(IInspectable interface) =>
      IXmlDomImplementation.fromRawPointer(
          interface.toInterface(IID_IXmlDomImplementation));

  bool hasFeature(String feature, Object? version) {
    final retValuePtr = calloc<Bool>();
    final featureHString = convertToHString(feature);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(LPVTBL, IntPtr feature,
                                  LPVTBL version, Pointer<Bool>)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL, int feature, LPVTBL version,
                          Pointer<Bool>)>()(ptr.ref.lpVtbl, featureHString,
              version?.intoBox().ref.lpVtbl ?? nullptr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(featureHString);

      free(retValuePtr);
    }
  }
}
