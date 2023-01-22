// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../../internal.dart';
import 'callbacks.dart';
import 'helpers.dart';
import 'iinspectable.dart';
import 'types.dart';
import 'uri.dart';

/// @nodoc
const IID_IUriRuntimeClassFactory = '{44a9796f-723e-4fdf-a218-033e75b0c084}';

/// {@category interface}
class IUriRuntimeClassFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUriRuntimeClassFactory.fromRawPointer(super.ptr);

  factory IUriRuntimeClassFactory.from(IInspectable interface) =>
      IUriRuntimeClassFactory.fromRawPointer(
          interface.toInterface(IID_IUriRuntimeClassFactory));

  Uri createUri(String uri) {
    final retValuePtr = calloc<COMObject>();
    final uriHString = convertToHString(uri);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            Pointer, IntPtr uri, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, int uri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, uriHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(uriHString);

    return Uri.fromRawPointer(retValuePtr);
  }

  Uri createWithRelativeUri(String baseUri, String relativeUri) {
    final retValuePtr = calloc<COMObject>();
    final baseUriHString = convertToHString(baseUri);
    final relativeUriHString = convertToHString(relativeUri);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, IntPtr baseUri,
                            IntPtr relativeUri, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(Pointer, int baseUri, int relativeUri,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, baseUriHString, relativeUriHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(baseUriHString);
    WindowsDeleteString(relativeUriHString);

    return Uri.fromRawPointer(retValuePtr);
  }
}
