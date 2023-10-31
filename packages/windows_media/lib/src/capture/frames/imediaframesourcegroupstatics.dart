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

import 'mediaframesourcegroup.dart';

/// @nodoc
const IID_IMediaFrameSourceGroupStatics =
    '{1c48bfc5-436f-4508-94cf-d5d8b7326445}';

class IMediaFrameSourceGroupStatics extends IInspectable {
  IMediaFrameSourceGroupStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaFrameSourceGroupStaticsVtbl>().ref;

  final _IMediaFrameSourceGroupStaticsVtbl _vtable;

  factory IMediaFrameSourceGroupStatics.from(IInspectable interface) =>
      interface.cast(IMediaFrameSourceGroupStatics.fromPtr,
          IID_IMediaFrameSourceGroupStatics);

  Future<List<MediaFrameSourceGroup?>> findAllAsync() {
    final value = calloc<COMObject>();

    final hr = _vtable.FindAllAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<MediaFrameSourceGroup?>>.fromPtr(value,
            tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
                iterableIid: '{d0b71deb-76e8-5833-9623-2b1e1a8e1b72}',
                tObjectCreator: MediaFrameSourceGroup.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<MediaFrameSourceGroup?> fromIdAsync(String id) {
    final value = calloc<COMObject>();

    final hr = _vtable.FromIdAsync.asFunction<
        int Function(VTablePointer lpVtbl, int id,
            Pointer<COMObject> value)>()(lpVtbl, id.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MediaFrameSourceGroup?>.fromPtr(
        value,
        tResultObjectCreator: MediaFrameSourceGroup.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String getDeviceSelector() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetDeviceSelector.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IMediaFrameSourceGroupStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      FindAllAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr id, Pointer<COMObject> value)>>
      FromIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      GetDeviceSelector;
}
