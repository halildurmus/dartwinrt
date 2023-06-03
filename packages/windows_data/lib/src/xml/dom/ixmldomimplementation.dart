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

/// @nodoc
const IID_IXmlDomImplementation = '{6de58132-f11d-4fbb-8cc6-583cba93112f}';

class IXmlDomImplementation extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IXmlDomImplementation.fromPtr(super.ptr);

  factory IXmlDomImplementation.from(IInspectable interface) =>
      IXmlDomImplementation.fromPtr(
          interface.toInterface(IID_IXmlDomImplementation));

  bool hasFeature(String feature, Object? version) {
    final retValuePtr = calloc<Bool>();

    try {
      final featureHString = feature.toHString();
      final versionPtr = version?.intoBox().ptr.ref.lpVtbl ?? nullptr;

      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr feature,
                                  VTablePointer version,
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int feature,
                          VTablePointer version, Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, featureHString, versionPtr, retValuePtr);

      WindowsDeleteString(featureHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
