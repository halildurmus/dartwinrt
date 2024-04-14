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
const IID_IKnownFoldersCameraRollStatics =
    '{5d115e66-27e8-492f-b8e5-2f90896cd4cd}';

class IKnownFoldersCameraRollStatics extends IInspectable {
  IKnownFoldersCameraRollStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IKnownFoldersCameraRollStaticsVtbl>().ref;

  final _IKnownFoldersCameraRollStaticsVtbl _vtable;

  factory IKnownFoldersCameraRollStatics.from(IInspectable interface) =>
      interface.cast(IKnownFoldersCameraRollStatics.fromPtr,
          IID_IKnownFoldersCameraRollStatics);

  StorageFolder? get cameraRoll {
    final value = calloc<COMObject>();

    final hr = _vtable.get_CameraRoll.asFunction<
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

final class _IKnownFoldersCameraRollStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CameraRoll;
}
