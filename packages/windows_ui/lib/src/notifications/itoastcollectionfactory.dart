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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastcollection.dart';

/// @nodoc
const IID_IToastCollectionFactory = '{164dd3d7-73c4-44f7-b4ff-fb6d4bf1f4c6}';

class IToastCollectionFactory extends IInspectable {
  IToastCollectionFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastCollectionFactoryVtbl>().ref;

  final _IToastCollectionFactoryVtbl _vtable;

  factory IToastCollectionFactory.from(IInspectable interface) => interface
      .cast(IToastCollectionFactory.fromPtr, IID_IToastCollectionFactory);

  ToastCollection createInstance(String collectionId, String displayName,
      String launchArgs, Uri? iconUri) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateInstance.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int collectionId,
                int displayName,
                int launchArgs,
                VTablePointer iconUri,
                Pointer<COMObject> value)>()(
        lpVtbl,
        collectionId.toHString(),
        displayName.toHString(),
        launchArgs.toHString(),
        iconUri?.toWinRTUri().lpVtbl ?? nullptr,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ToastCollection.fromPtr(value);
  }
}

final class _IToastCollectionFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr collectionId,
              IntPtr displayName,
              IntPtr launchArgs,
              VTablePointer iconUri,
              Pointer<COMObject> value)>> CreateInstance;
}
