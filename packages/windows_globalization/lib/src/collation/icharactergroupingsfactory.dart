// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'charactergroupings.dart';

/// @nodoc
const IID_ICharacterGroupingsFactory = '{99ea9fd9-886d-4401-9f98-69c82d4c2f78}';

/// {@category interface}
class ICharacterGroupingsFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICharacterGroupingsFactory.fromPtr(super.ptr);

  factory ICharacterGroupingsFactory.from(IInspectable interface) =>
      ICharacterGroupingsFactory.fromPtr(
          interface.toInterface(IID_ICharacterGroupingsFactory));

  CharacterGroupings create(String language) {
    final retValuePtr = calloc<COMObject>();
    final languageHString = language.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr language,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int language,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, languageHString, retValuePtr);

    WindowsDeleteString(languageHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return CharacterGroupings.fromPtr(retValuePtr);
  }
}
