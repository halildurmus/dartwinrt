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

import '../mediaproperties/videoencodingproperties.dart';
import 'videostreamdescriptor.dart';

/// @nodoc
const IID_IVideoStreamDescriptorFactory =
    '{494ef6d1-bb75-43d2-9e5e-7b79a3afced4}';

class IVideoStreamDescriptorFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IVideoStreamDescriptorFactory.fromPtr(super.ptr);

  factory IVideoStreamDescriptorFactory.from(IInspectable interface) =>
      IVideoStreamDescriptorFactory.fromPtr(
          interface.toInterface(IID_IVideoStreamDescriptorFactory));

  VideoStreamDescriptor create(VideoEncodingProperties? encodingProperties) {
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
        ptr.ref.lpVtbl, encodingProperties?.ptr.ref.lpVtbl ?? nullptr, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return VideoStreamDescriptor.fromPtr(result);
  }
}