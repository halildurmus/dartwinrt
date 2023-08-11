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
const IID_ILanguageStatics3 = '{d15ecb5a-71de-5752-9542-fac5b4f27261}';

class ILanguageStatics3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILanguageStatics3.fromPtr(super.ptr);

  factory ILanguageStatics3.from(IInspectable interface) =>
      interface.cast(ILanguageStatics3.fromPtr, IID_ILanguageStatics3);

  IVector<String> getMuiCompatibleLanguageListFromLanguageTags(
      IIterable<String>? languageTags) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer languageTags,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer languageTags,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, languageTags.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVector.fromPtr(result,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }
}
