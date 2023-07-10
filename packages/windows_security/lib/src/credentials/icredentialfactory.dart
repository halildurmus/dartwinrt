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

import 'passwordcredential.dart';

/// @nodoc
const IID_ICredentialFactory = '{54ef13a1-bf26-47b5-97dd-de779b7cad58}';

class ICredentialFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICredentialFactory.fromPtr(super.ptr);

  factory ICredentialFactory.from(IInspectable interface) =>
      ICredentialFactory.fromPtr(interface.toInterface(IID_ICredentialFactory));

  PasswordCredential createPasswordCredential(
      String resource, String userName, String password) {
    final credential = calloc<COMObject>();
    final resourceHString = resource.toHString();
    final userNameHString = userName.toHString();
    final passwordHString = password.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr resource,
                            IntPtr userName,
                            IntPtr password,
                            Pointer<COMObject> credential)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int resource, int userName,
                    int password, Pointer<COMObject> credential)>()(
        ptr.ref.lpVtbl,
        resourceHString,
        userNameHString,
        passwordHString,
        credential);

    WindowsDeleteString(resourceHString);
    WindowsDeleteString(userNameHString);
    WindowsDeleteString(passwordHString);

    if (FAILED(hr)) {
      free(credential);
      throwWindowsException(hr);
    }

    return PasswordCredential.fromPtr(credential);
  }
}
