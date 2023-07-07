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
import 'package:windows_system/windows_system.dart';

import 'applicationdata.dart';

/// @nodoc
const IID_IApplicationDataStatics2 = '{cd606211-cf49-40a4-a47c-c7f0dbba8107}';

class IApplicationDataStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IApplicationDataStatics2.fromPtr(super.ptr);

  factory IApplicationDataStatics2.from(IInspectable interface) =>
      IApplicationDataStatics2.fromPtr(
          interface.toInterface(IID_IApplicationDataStatics2));

  Future<ApplicationData?> getForUserAsync(User? user) {
    final getForUserOperation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                Pointer<COMObject> getForUserOperation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        Pointer<COMObject> getForUserOperation)>()(
            ptr.ref.lpVtbl,
            user?.ptr.ref.lpVtbl ?? nullptr,
            getForUserOperation);

    if (FAILED(hr)) {
      free(getForUserOperation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ApplicationData?>.fromPtr(
        getForUserOperation,
        creator: ApplicationData.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
