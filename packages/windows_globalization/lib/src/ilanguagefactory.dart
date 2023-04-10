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

import 'language.dart';

/// @nodoc
const IID_ILanguageFactory = '{9b0252ac-0c27-44f8-b792-9793fb66c63e}';

/// {@category interface}
class ILanguageFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILanguageFactory.fromPtr(super.ptr);

  factory ILanguageFactory.from(IInspectable interface) =>
      ILanguageFactory.fromPtr(interface.toInterface(IID_ILanguageFactory));

  Language createLanguage(String languageTag) {
    final retValuePtr = calloc<COMObject>();
    final languageTagHString = languageTag.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr languageTag,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int languageTag,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, languageTagHString, retValuePtr);

    WindowsDeleteString(languageTagHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return Language.fromPtr(retValuePtr);
  }
}
