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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'applicationdatacontainer.dart';
import 'applicationdatacreatedisposition.dart';
import 'applicationdatalocality.dart';

/// @nodoc
const IID_IApplicationDataContainer = '{c5aefd1e-f467-40ba-8566-ab640a441e1d}';

class IApplicationDataContainer extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IApplicationDataContainer.fromPtr(super.ptr);

  factory IApplicationDataContainer.from(IInspectable interface) =>
      IApplicationDataContainer.fromPtr(
          interface.toInterface(IID_IApplicationDataContainer));

  String get name {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  ApplicationDataLocality get locality {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationDataLocality.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  IPropertySet get values {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertySet.fromPtr(retValuePtr);
  }

  Map<String, ApplicationDataContainer?> get containers {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final mapView = IMapView<String, ApplicationDataContainer?>.fromPtr(
        retValuePtr,
        iterableIid: '{a785be1d-159e-53ad-9553-598b03dca048}',
        creator: ApplicationDataContainer.fromPtr);
    return mapView.toMap();
  }

  ApplicationDataContainer? createContainer(
      String name, ApplicationDataCreateDisposition disposition) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr name,
                                Int32 disposition,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int name,
                        int disposition, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, nameHString, disposition.value, retValuePtr);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return ApplicationDataContainer.fromPtr(retValuePtr);
  }

  void deleteContainer(String name) {
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int name)>()(
        ptr.ref.lpVtbl, nameHString);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
