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

/// @nodoc
const IID_ILanguageExtensionSubtags = '{7d7daf45-368d-4364-852b-dec927037b85}';

/// {@category interface}
class ILanguageExtensionSubtags extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILanguageExtensionSubtags.fromPtr(super.ptr);

  factory ILanguageExtensionSubtags.from(IInspectable interface) =>
      ILanguageExtensionSubtags.fromPtr(
          interface.toInterface(IID_ILanguageExtensionSubtags));

  List<String> getExtensionSubtags(String singleton) {
    final retValuePtr = calloc<COMObject>();
    final singletonHString = singleton.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr singleton,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int singleton,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, singletonHString, retValuePtr);

    WindowsDeleteString(singletonHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<String>.fromPtr(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
    return vectorView.toList();
  }
}
