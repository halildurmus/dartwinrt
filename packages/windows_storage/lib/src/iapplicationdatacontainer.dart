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

import 'applicationdatacontainer.dart';
import 'applicationdatacreatedisposition.dart';
import 'applicationdatalocality.dart';

/// @nodoc
const IID_IApplicationDataContainer = '{c5aefd1e-f467-40ba-8566-ab640a441e1d}';

class IApplicationDataContainer extends IInspectable {
  IApplicationDataContainer.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IApplicationDataContainerVtbl>().ref;

  final _IApplicationDataContainerVtbl _vtable;

  factory IApplicationDataContainer.from(IInspectable interface) => interface
      .cast(IApplicationDataContainer.fromPtr, IID_IApplicationDataContainer);

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Name.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  ApplicationDataLocality get locality {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Locality.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ApplicationDataLocality.from(value.value);
    } finally {
      free(value);
    }
  }

  IPropertySet? get values {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Values.asFunction<
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

    return IPropertySet.fromPtr(value);
  }

  Map<String, ApplicationDataContainer?>? get containers {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Containers.asFunction<
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

    return IMapView<String, ApplicationDataContainer?>.fromPtr(value,
            iterableIid: '{a785be1d-159e-53ad-9553-598b03dca048}',
            vObjectCreator: ApplicationDataContainer.fromPtr)
        .toMap();
  }

  ApplicationDataContainer? createContainer(
      String name, ApplicationDataCreateDisposition disposition) {
    final container = calloc<COMObject>();

    final hr = _vtable.CreateContainer.asFunction<
            int Function(VTablePointer lpVtbl, int name, int disposition,
                Pointer<COMObject> container)>()(
        lpVtbl, name.toHString(), disposition.value, container);

    if (FAILED(hr)) {
      free(container);
      throwWindowsException(hr);
    }

    if (container.isNull) {
      free(container);
      return null;
    }

    return ApplicationDataContainer.fromPtr(container);
  }

  void deleteContainer(String name) {
    final hr = _vtable.DeleteContainer.asFunction<
        int Function(
            VTablePointer lpVtbl, int name)>()(lpVtbl, name.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IApplicationDataContainerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Name;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Locality;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Values;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Containers;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name, Int32 disposition,
              Pointer<COMObject> container)>> CreateContainer;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr name)>>
      DeleteContainer;
}
