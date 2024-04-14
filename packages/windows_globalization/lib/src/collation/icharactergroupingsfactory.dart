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

import 'charactergroupings.dart';

/// @nodoc
const IID_ICharacterGroupingsFactory = '{99ea9fd9-886d-4401-9f98-69c82d4c2f78}';

class ICharacterGroupingsFactory extends IInspectable {
  ICharacterGroupingsFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICharacterGroupingsFactoryVtbl>().ref;

  final _ICharacterGroupingsFactoryVtbl _vtable;

  factory ICharacterGroupingsFactory.from(IInspectable interface) => interface
      .cast(ICharacterGroupingsFactory.fromPtr, IID_ICharacterGroupingsFactory);

  CharacterGroupings create(String language) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
        int Function(VTablePointer lpVtbl, int language,
            Pointer<COMObject> result)>()(lpVtbl, language.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CharacterGroupings.fromPtr(result);
  }
}

final class _ICharacterGroupingsFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr language,
              Pointer<COMObject> result)>> Create;
}
