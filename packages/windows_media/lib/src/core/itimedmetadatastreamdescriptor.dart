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

import '../mediaproperties/timedmetadataencodingproperties.dart';
import 'timedmetadatastreamdescriptor.dart';

/// @nodoc
const IID_ITimedMetadataStreamDescriptor =
    '{133336bf-296a-463e-9ff9-01cd25691408}';

class ITimedMetadataStreamDescriptor extends IInspectable {
  ITimedMetadataStreamDescriptor.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ITimedMetadataStreamDescriptorVtbl>().ref;

  final _ITimedMetadataStreamDescriptorVtbl _vtable;

  factory ITimedMetadataStreamDescriptor.from(IInspectable interface) =>
      interface.cast(ITimedMetadataStreamDescriptor.fromPtr,
          IID_ITimedMetadataStreamDescriptor);

  TimedMetadataEncodingProperties? get encodingProperties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_EncodingProperties.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return TimedMetadataEncodingProperties.fromPtr(value);
  }

  TimedMetadataStreamDescriptor? copy() {
    final result = calloc<COMObject>();

    final hr = _vtable.Copy.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TimedMetadataStreamDescriptor.fromPtr(result);
  }
}

final class _ITimedMetadataStreamDescriptorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_EncodingProperties;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> Copy;
}
