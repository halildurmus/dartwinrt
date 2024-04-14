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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'wwwformurldecoder.dart';

/// @nodoc
const IID_IWwwFormUrlDecoderRuntimeClassFactory =
    '{5b8c6b3d-24ae-41b5-a1bf-f0c3d544845b}';

class IWwwFormUrlDecoderRuntimeClassFactory extends IInspectable {
  IWwwFormUrlDecoderRuntimeClassFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IWwwFormUrlDecoderRuntimeClassFactoryVtbl>()
            .ref;

  final _IWwwFormUrlDecoderRuntimeClassFactoryVtbl _vtable;

  factory IWwwFormUrlDecoderRuntimeClassFactory.from(IInspectable interface) =>
      interface.cast(IWwwFormUrlDecoderRuntimeClassFactory.fromPtr,
          IID_IWwwFormUrlDecoderRuntimeClassFactory);

  WwwFormUrlDecoder createWwwFormUrlDecoder(String query) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateWwwFormUrlDecoder.asFunction<
            int Function(VTablePointer lpVtbl, int query,
                Pointer<COMObject> instance)>()(
        lpVtbl, query.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return WwwFormUrlDecoder.fromPtr(instance);
  }
}

final class _IWwwFormUrlDecoderRuntimeClassFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr query,
              Pointer<COMObject> instance)>> CreateWwwFormUrlDecoder;
}
