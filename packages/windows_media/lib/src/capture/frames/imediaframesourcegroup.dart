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

import 'mediaframesourceinfo.dart';

/// @nodoc
const IID_IMediaFrameSourceGroup = '{7f605b87-4832-4b5f-ae3d-412faab37d34}';

class IMediaFrameSourceGroup extends IInspectable {
  IMediaFrameSourceGroup.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceGroupVtbl>().ref;

  final _IMediaFrameSourceGroupVtbl _vtable;

  factory IMediaFrameSourceGroup.from(IInspectable interface) => interface.cast(
      IMediaFrameSourceGroup.fromPtr, IID_IMediaFrameSourceGroup);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  List<MediaFrameSourceInfo?>? get sourceInfos {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SourceInfos.asFunction<
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

    return IVectorView<MediaFrameSourceInfo?>.fromPtr(value,
            iterableIid: '{2e29c5b0-6aa9-50f2-91a4-5b67a5598f2e}',
            creator: MediaFrameSourceInfo.fromPtr)
        .toList();
  }
}

final class _IMediaFrameSourceGroupVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SourceInfos;
}
