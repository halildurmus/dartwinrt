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
  ITimedMetadataStreamDescriptorFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_ITimedMetadataStreamDescriptorFactoryVtbl>()
            .ref;

  final _ITimedMetadataStreamDescriptorFactoryVtbl _vtable;

  factory ITimedMetadataStreamDescriptorFactory.from(IInspectable interface) =>
      interface.cast(ITimedMetadataStreamDescriptorFactory.fromPtr,
          IID_ITimedMetadataStreamDescriptorFactory);

  TimedMetadataStreamDescriptor create(
      TimedMetadataEncodingProperties? encodingProperties) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer encodingProperties,
                Pointer<COMObject> result)>()(
        lpVtbl, encodingProperties.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return TimedMetadataStreamDescriptor.fromPtr(result);
  }
}

final class _ITimedMetadataStreamDescriptorFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer encodingProperties,
              Pointer<COMObject> result)>> Create;
}
