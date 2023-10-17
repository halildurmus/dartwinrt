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

import 'userageconsentgroup.dart';
import 'userageconsentresult.dart';

/// @nodoc
const IID_IUser2 = '{98ba5628-a6e3-518e-89d9-d3b2b1991a10}';

class IUser2 extends IInspectable {
  IUser2.fromPtr(super.ptr);

  factory IUser2.from(IInspectable interface) =>
      interface.cast(IUser2.fromPtr, IID_IUser2);

  Future<UserAgeConsentResult> checkUserAgeConsentGroupAsync(
      UserAgeConsentGroup consentGroup) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Int32 consentGroup,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int consentGroup,
                        Pointer<COMObject> operation)>()(
            lpVtbl, consentGroup.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<UserAgeConsentResult>.fromPtr(
        operation,
        enumCreator: UserAgeConsentResult.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
