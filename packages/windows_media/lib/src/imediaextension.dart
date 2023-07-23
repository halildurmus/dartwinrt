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
const IID_IMediaExtension = '{07915118-45df-442b-8a3f-f7826a6370ab}';

/// Encapsulates the method needed to set the configuration properties on a
/// registered media parser or codec.
class IMediaExtension extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IMediaExtension.fromPtr(super.ptr);

  factory IMediaExtension.from(IInspectable interface) =>
      IMediaExtension.fromPtr(interface.toInterface(IID_IMediaExtension));

  void setProperties(IPropertySet? configuration) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer configuration)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer configuration)>()(
        ptr.ref.lpVtbl, configuration.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
