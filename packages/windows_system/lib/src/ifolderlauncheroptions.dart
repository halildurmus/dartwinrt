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
import 'package:windows_storage/windows_storage.dart';

/// @nodoc
const IID_IFolderLauncherOptions = '{bb91c27d-6b87-432a-bd04-776c6f5fb2ab}';

class IFolderLauncherOptions extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IFolderLauncherOptions.fromPtr(super.ptr);

  factory IFolderLauncherOptions.from(IInspectable interface) =>
      IFolderLauncherOptions.fromPtr(
          interface.toInterface(IID_IFolderLauncherOptions));

  IVector<IStorageItem?> get itemsToSelect {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
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

    return IVector.fromPtr(retValuePtr,
        iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}',
        creator: IStorageItem.fromPtr);
  }
}
