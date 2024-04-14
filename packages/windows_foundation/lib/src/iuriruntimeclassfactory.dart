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
import 'uri.dart';

/// @nodoc
const IID_IUriRuntimeClassFactory = '{44a9796f-723e-4fdf-a218-033e75b0c084}';

class IUriRuntimeClassFactory extends IInspectable {
  IUriRuntimeClassFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUriRuntimeClassFactoryVtbl>().ref;

  final _IUriRuntimeClassFactoryVtbl _vtable;

  factory IUriRuntimeClassFactory.from(IInspectable interface) => interface
      .cast(IUriRuntimeClassFactory.fromPtr, IID_IUriRuntimeClassFactory);

  Uri createUri(String uri) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateUri.asFunction<
        int Function(VTablePointer lpVtbl, int uri,
            Pointer<COMObject> instance)>()(lpVtbl, uri.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return Uri.fromPtr(instance);
  }

  Uri createWithRelativeUri(String baseUri, String relativeUri) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CreateWithRelativeUri.asFunction<
            int Function(VTablePointer lpVtbl, int baseUri, int relativeUri,
                Pointer<COMObject> instance)>()(
        lpVtbl, baseUri.toHString(), relativeUri.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    return Uri.fromPtr(instance);
  }
}

final class _IUriRuntimeClassFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr uri,
              Pointer<COMObject> instance)>> CreateUri;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr baseUri,
              IntPtr relativeUri,
              Pointer<COMObject> instance)>> CreateWithRelativeUri;
}
