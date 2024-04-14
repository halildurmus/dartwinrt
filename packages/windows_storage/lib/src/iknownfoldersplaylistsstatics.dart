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
const IID_IKnownFoldersPlaylistsStatics =
    '{dad5ecd6-306f-4d6a-b496-46ba8eb106ce}';

class IKnownFoldersPlaylistsStatics extends IInspectable {
  IKnownFoldersPlaylistsStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IKnownFoldersPlaylistsStaticsVtbl>().ref;

  final _IKnownFoldersPlaylistsStaticsVtbl _vtable;

  factory IKnownFoldersPlaylistsStatics.from(IInspectable interface) =>
      interface.cast(IKnownFoldersPlaylistsStatics.fromPtr,
          IID_IKnownFoldersPlaylistsStatics);

  StorageFolder? get playlists {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Playlists.asFunction<
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

final class _IKnownFoldersPlaylistsStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Playlists;
}
