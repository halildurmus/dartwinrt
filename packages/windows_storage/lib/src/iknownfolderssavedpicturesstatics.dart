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

import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersSavedPicturesStatics =
    '{055c93ea-253d-467c-b6ca-a97da1e9a18d}';

class IKnownFoldersSavedPicturesStatics extends IInspectable {
  IKnownFoldersSavedPicturesStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IKnownFoldersSavedPicturesStaticsVtbl>().ref;

  final _IKnownFoldersSavedPicturesStaticsVtbl _vtable;

  factory IKnownFoldersSavedPicturesStatics.from(IInspectable interface) =>
      interface.cast(IKnownFoldersSavedPicturesStatics.fromPtr,
          IID_IKnownFoldersSavedPicturesStatics);

  StorageFolder? get savedPictures {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SavedPictures.asFunction<
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

final class _IKnownFoldersSavedPicturesStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SavedPictures;
}
