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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'uri.dart';

/// @nodoc
const IID_IUriRuntimeClassFactory = '{44a9796f-723e-4fdf-a218-033e75b0c084}';

/// {@category interface}
class IUriRuntimeClassFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUriRuntimeClassFactory.fromPtr(super.ptr);

  factory IUriRuntimeClassFactory.from(IInspectable interface) =>
      IUriRuntimeClassFactory.fromPtr(
          interface.toInterface(IID_IUriRuntimeClassFactory));

  Uri createUri(String uri) {
    final retValuePtr = calloc<COMObject>();
    final uriHString = uri.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr uri,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int uri,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, uriHString, retValuePtr);

    WindowsDeleteString(uriHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Uri.fromPtr(retValuePtr);
  }

  Uri createWithRelativeUri(String baseUri, String relativeUri) {
    final retValuePtr = calloc<COMObject>();
    final baseUriHString = baseUri.toHString();
    final relativeUriHString = relativeUri.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr baseUri,
                                IntPtr relativeUri,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int baseUri,
                        int relativeUri, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, baseUriHString, relativeUriHString, retValuePtr);

    WindowsDeleteString(baseUriHString);
    WindowsDeleteString(relativeUriHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Uri.fromPtr(retValuePtr);
  }
}
