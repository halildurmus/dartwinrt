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

import '../mediaproperties/timedmetadataencodingproperties.dart';
import 'timedmetadatastreamdescriptor.dart';

/// @nodoc
const IID_ITimedMetadataStreamDescriptorFactory =
    '{c027de30-7362-4ff9-98b1-2dfd0b8d1cae}';

class ITimedMetadataStreamDescriptorFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITimedMetadataStreamDescriptorFactory.fromPtr(super.ptr);

  factory ITimedMetadataStreamDescriptorFactory.from(IInspectable interface) =>
      ITimedMetadataStreamDescriptorFactory.fromPtr(
          interface.toInterface(IID_ITimedMetadataStreamDescriptorFactory));

  TimedMetadataStreamDescriptor create(
      TimedMetadataEncodingProperties? encodingProperties) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer encodingProperties,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer encodingProperties,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, encodingProperties.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return TimedMetadataStreamDescriptor.fromPtr(result);
  }
}
