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

import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersStatics = '{5a2a7520-4802-452d-9ad9-4351ada7ec35}';

class IKnownFoldersStatics extends IInspectable {
  IKnownFoldersStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IKnownFoldersStaticsVtbl>().ref;

  final _IKnownFoldersStaticsVtbl _vtable;

  factory IKnownFoldersStatics.from(IInspectable interface) =>
      interface.cast(IKnownFoldersStatics.fromPtr, IID_IKnownFoldersStatics);

  StorageFolder? get musicLibrary {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MusicLibrary.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get picturesLibrary {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PicturesLibrary.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get videosLibrary {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideosLibrary.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get documentsLibrary {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DocumentsLibrary.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get homeGroup {
    final value = calloc<COMObject>();

    final hr = _vtable.get_HomeGroup.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get removableDevices {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RemovableDevices.asFunction<
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

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get mediaServerDevices {
    final value = calloc<COMObject>();

    final hr = _vtable.get_MediaServerDevices.asFunction<
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

    return StorageFolder.fromPtr(value);
  }
}

final class _IKnownFoldersStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MusicLibrary;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PicturesLibrary;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideosLibrary;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DocumentsLibrary;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_HomeGroup;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RemovableDevices;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_MediaServerDevices;
}
