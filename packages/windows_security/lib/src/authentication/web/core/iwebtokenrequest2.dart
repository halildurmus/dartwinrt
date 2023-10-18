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
const IID_IWebTokenRequest2 = '{d700c079-30c8-4397-9654-961c3be8b855}';

class IWebTokenRequest2 extends IInspectable {
  IWebTokenRequest2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebTokenRequest2Vtbl>().ref;

  final _IWebTokenRequest2Vtbl _vtable;

  factory IWebTokenRequest2.from(IInspectable interface) =>
      interface.cast(IWebTokenRequest2.fromPtr, IID_IWebTokenRequest2);

  IMap<String, String>? get appProperties {
    final requestProperties = calloc<COMObject>();

    final hr = _vtable.get_AppProperties.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> requestProperties)>()(lpVtbl, requestProperties);

    if (FAILED(hr)) {
      free(requestProperties);
      throwWindowsException(hr);
    }

    if (requestProperties.isNull) {
      free(requestProperties);
      return null;
    }

    return IMap.fromPtr(requestProperties,
        iterableIid: '{e9bdaaf0-cbf6-5c72-be90-29cbf3a1319b}');
  }
}

final class _IWebTokenRequest2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> requestProperties)>>
      get_AppProperties;
}
