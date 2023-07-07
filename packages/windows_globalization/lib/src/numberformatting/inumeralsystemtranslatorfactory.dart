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

import 'numeralsystemtranslator.dart';

/// @nodoc
const IID_INumeralSystemTranslatorFactory =
    '{9630c8da-36ef-4d88-a85c-6f0d98d620a6}';

class INumeralSystemTranslatorFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  INumeralSystemTranslatorFactory.fromPtr(super.ptr);

  factory INumeralSystemTranslatorFactory.from(IInspectable interface) =>
      INumeralSystemTranslatorFactory.fromPtr(
          interface.toInterface(IID_INumeralSystemTranslatorFactory));

  NumeralSystemTranslator create(IIterable<String>? languages) {
    final result = calloc<COMObject>();

    final hr =
        ptr
                .ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer languages,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(
                        VTablePointer lpVtbl,
                        VTablePointer languages,
                        Pointer<COMObject>
                            result)>()(
            ptr.ref.lpVtbl,
            languages ==
                    null
                ? nullptr
                : IInspectable(languages
                        .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                    .ptr
                    .ref
                    .lpVtbl,
            result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return NumeralSystemTranslator.fromPtr(result);
  }
}
