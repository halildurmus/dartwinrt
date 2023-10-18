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

/// @nodoc
const IID_IXmlDomImplementation = '{6de58132-f11d-4fbb-8cc6-583cba93112f}';

class IXmlDomImplementation extends IInspectable {
  IXmlDomImplementation.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlDomImplementationVtbl>().ref;

  final _IXmlDomImplementationVtbl _vtable;

  factory IXmlDomImplementation.from(IInspectable interface) =>
      interface.cast(IXmlDomImplementation.fromPtr, IID_IXmlDomImplementation);

  bool hasFeature(String feature, Object? version) {
    final featureSupported = calloc<Bool>();

    try {
      final hr = _vtable.HasFeature.asFunction<
              int Function(VTablePointer lpVtbl, int feature,
                  VTablePointer version, Pointer<Bool> featureSupported)>()(
          lpVtbl,
          feature.toHString(),
          version?.boxValue().lpVtbl ?? nullptr,
          featureSupported);

      if (FAILED(hr)) throwWindowsException(hr);

      return featureSupported.value;
    } finally {
      free(featureSupported);
    }
  }
}

final class _IXmlDomImplementationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr feature,
              VTablePointer version,
              Pointer<Bool> featureSupported)>> HasFeature;
}
