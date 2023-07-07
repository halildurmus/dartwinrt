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

import 'toastcollection.dart';

/// @nodoc
const IID_IToastCollectionFactory = '{164dd3d7-73c4-44f7-b4ff-fb6d4bf1f4c6}';

class IToastCollectionFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IToastCollectionFactory.fromPtr(super.ptr);

  factory IToastCollectionFactory.from(IInspectable interface) =>
      IToastCollectionFactory.fromPtr(
          interface.toInterface(IID_IToastCollectionFactory));

  ToastCollection createInstance(String collectionId, String displayName,
      String launchArgs, Uri? iconUri) {
    final value = calloc<COMObject>();
    final collectionIdHString = collectionId.toHString();
    final displayNameHString = displayName.toHString();
    final launchArgsHString = launchArgs.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr collectionId,
                            IntPtr displayName,
                            IntPtr launchArgs,
                            VTablePointer iconUri,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int collectionId,
                    int displayName,
                    int launchArgs,
                    VTablePointer iconUri,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        collectionIdHString,
        displayNameHString,
        launchArgsHString,
        iconUri?.toWinRTUri().ptr.ref.lpVtbl ?? nullptr,
        value);

    WindowsDeleteString(collectionIdHString);
    WindowsDeleteString(displayNameHString);
    WindowsDeleteString(launchArgsHString);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ToastCollection.fromPtr(value);
  }
}
