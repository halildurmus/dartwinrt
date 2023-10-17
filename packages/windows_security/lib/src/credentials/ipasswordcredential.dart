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
const IID_IPasswordCredential = '{6ab18989-c720-41a7-a6c1-feadb36329a0}';

class IPasswordCredential extends IInspectable {
  IPasswordCredential.fromPtr(super.ptr);

  factory IPasswordCredential.from(IInspectable interface) =>
      interface.cast(IPasswordCredential.fromPtr, IID_IPasswordCredential);

  String get resource {
    final resource = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<IntPtr> resource)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> resource)>()(lpVtbl, resource);

      if (FAILED(hr)) throwWindowsException(hr);

      return resource.toDartString();
    } finally {
      free(resource);
    }
  }

  set resource(String resource) {
    final hr =
        vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr resource)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int resource)>()(
            lpVtbl, resource.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get userName {
    final userName = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<IntPtr> userName)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> userName)>()(lpVtbl, userName);

      if (FAILED(hr)) throwWindowsException(hr);

      return userName.toDartString();
    } finally {
      free(userName);
    }
  }

  set userName(String userName) {
    final hr =
        vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr userName)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int userName)>()(
            lpVtbl, userName.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get password {
    final password = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<IntPtr> password)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> password)>()(lpVtbl, password);

      if (FAILED(hr)) throwWindowsException(hr);

      return password.toDartString();
    } finally {
      free(password);
    }
  }

  set password(String password) {
    final hr =
        vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr password)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int password)>()(
            lpVtbl, password.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void retrievePassword() {
    final hr = vtable
        .elementAt(12)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IPropertySet? get properties {
    final props = calloc<COMObject>();

    final hr = vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> props)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> props)>()(
        lpVtbl, props);

    if (FAILED(hr)) {
      free(props);
      throwWindowsException(hr);
    }

    if (props.isNull) {
      free(props);
      return null;
    }

    return IPropertySet.fromPtr(props);
  }
}
