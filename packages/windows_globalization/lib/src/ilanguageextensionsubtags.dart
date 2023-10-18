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

/// @nodoc
const IID_ILanguageExtensionSubtags = '{7d7daf45-368d-4364-852b-dec927037b85}';

class ILanguageExtensionSubtags extends IInspectable {
  ILanguageExtensionSubtags.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ILanguageExtensionSubtagsVtbl>().ref;

  final _ILanguageExtensionSubtagsVtbl _vtable;

  factory ILanguageExtensionSubtags.from(IInspectable interface) => interface
      .cast(ILanguageExtensionSubtags.fromPtr, IID_ILanguageExtensionSubtags);

  List<String> getExtensionSubtags(String singleton) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetExtensionSubtags.asFunction<
        int Function(VTablePointer lpVtbl, int singleton,
            Pointer<COMObject> value)>()(lpVtbl, singleton.toHString(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return IVectorView<String>.fromPtr(value,
            iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}')
        .toList();
  }
}

final class _ILanguageExtensionSubtagsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr singleton,
              Pointer<COMObject> value)>> GetExtensionSubtags;
}
