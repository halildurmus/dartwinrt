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

import 'mediaframereference.dart';

/// @nodoc
const IID_IMultiSourceMediaFrameReference =
    '{21964b1a-7fe2-44d6-92e5-298e6d2810e9}';

class IMultiSourceMediaFrameReference extends IInspectable
    implements IClosable {
  IMultiSourceMediaFrameReference.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IMultiSourceMediaFrameReferenceVtbl>().ref;

  final _IMultiSourceMediaFrameReferenceVtbl _vtable;

  factory IMultiSourceMediaFrameReference.from(IInspectable interface) =>
      interface.cast(IMultiSourceMediaFrameReference.fromPtr,
          IID_IMultiSourceMediaFrameReference);

  MediaFrameReference? tryGetFrameReferenceBySourceId(String sourceId) {
    final value = calloc<COMObject>();

    final hr = _vtable.TryGetFrameReferenceBySourceId.asFunction<
        int Function(VTablePointer lpVtbl, int sourceId,
            Pointer<COMObject> value)>()(lpVtbl, sourceId.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return MediaFrameReference.fromPtr(value);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _IMultiSourceMediaFrameReferenceVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr sourceId,
              Pointer<COMObject> value)>> TryGetFrameReferenceBySourceId;
}
