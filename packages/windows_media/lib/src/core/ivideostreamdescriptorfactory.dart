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

import '../mediaproperties/videoencodingproperties.dart';
import 'videostreamdescriptor.dart';

/// @nodoc
const IID_IVideoStreamDescriptorFactory =
    '{494ef6d1-bb75-43d2-9e5e-7b79a3afced4}';

class IVideoStreamDescriptorFactory extends IInspectable {
  IVideoStreamDescriptorFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoStreamDescriptorFactoryVtbl>().ref;

  final _IVideoStreamDescriptorFactoryVtbl _vtable;

  factory IVideoStreamDescriptorFactory.from(IInspectable interface) =>
      interface.cast(IVideoStreamDescriptorFactory.fromPtr,
          IID_IVideoStreamDescriptorFactory);

  VideoStreamDescriptor create(VideoEncodingProperties? encodingProperties) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProperties,
                Pointer<COMObject> result)>()(
        lpVtbl, encodingProperties.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return VideoStreamDescriptor.fromPtr(result);
  }
}

final class _IVideoStreamDescriptorFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProperties,
              Pointer<COMObject> result)>> Create;
}
