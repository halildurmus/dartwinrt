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

import 'mediaframereference.dart';

/// @nodoc
const IID_IMultiSourceMediaFrameReference =
    '{21964b1a-7fe2-44d6-92e5-298e6d2810e9}';

class IMultiSourceMediaFrameReference extends IInspectable
    implements IClosable {
  // vtable begins at 6, is 1 entries long.
  IMultiSourceMediaFrameReference.fromPtr(super.ptr);

  factory IMultiSourceMediaFrameReference.from(IInspectable interface) =>
      IMultiSourceMediaFrameReference.fromPtr(
          interface.toInterface(IID_IMultiSourceMediaFrameReference));

  MediaFrameReference? tryGetFrameReferenceBySourceId(String sourceId) {
    final value = calloc<COMObject>();
    final sourceIdHString = sourceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr sourceId,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int sourceId,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, sourceIdHString, value);

    WindowsDeleteString(sourceIdHString);

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
