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

import '../mediaproperties/audioencodingproperties.dart';
import 'audiostreamdescriptor.dart';

/// @nodoc
const IID_IAudioStreamDescriptorFactory =
    '{4a86ce9e-4cb1-4380-8e0c-83504b7f5bf3}';

class IAudioStreamDescriptorFactory extends IInspectable {
  IAudioStreamDescriptorFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IAudioStreamDescriptorFactoryVtbl>().ref;

  final _IAudioStreamDescriptorFactoryVtbl _vtable;

  factory IAudioStreamDescriptorFactory.from(IInspectable interface) =>
      interface.cast(IAudioStreamDescriptorFactory.fromPtr,
          IID_IAudioStreamDescriptorFactory);

  AudioStreamDescriptor create(AudioEncodingProperties? encodingProperties) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProperties,
                Pointer<COMObject> result)>()(
        lpVtbl, encodingProperties.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return AudioStreamDescriptor.fromPtr(result);
  }
}

final class _IAudioStreamDescriptorFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProperties,
              Pointer<COMObject> result)>> Create;
}
