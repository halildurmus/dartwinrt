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

import 'containerencodingproperties.dart';

/// @nodoc
const IID_IContainerEncodingProperties2 =
    '{b272c029-ae26-4819-baad-ad7a49b0a876}';

class IContainerEncodingProperties2 extends IInspectable {
  IContainerEncodingProperties2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IContainerEncodingProperties2Vtbl>().ref;

  final _IContainerEncodingProperties2Vtbl _vtable;

  factory IContainerEncodingProperties2.from(IInspectable interface) =>
      interface.cast(IContainerEncodingProperties2.fromPtr,
          IID_IContainerEncodingProperties2);

  ContainerEncodingProperties? copy() {
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

    return ContainerEncodingProperties.fromPtr(result);
  }
}

final class _IContainerEncodingProperties2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> Copy;
}
