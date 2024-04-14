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
import 'package:windows_system/windows_system.dart';

import 'iwebaccountprovider.dart';
import 'iwebaccountprovider2.dart';

/// @nodoc
const IID_IWebAccountProvider3 = '{da1c518b-970d-4d49-825c-f2706f8ca7fe}';

class IWebAccountProvider3 extends IInspectable
    implements IWebAccountProvider2, IWebAccountProvider {
  IWebAccountProvider3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWebAccountProvider3Vtbl>().ref;

  final _IWebAccountProvider3Vtbl _vtable;

  factory IWebAccountProvider3.from(IInspectable interface) =>
      interface.cast(IWebAccountProvider3.fromPtr, IID_IWebAccountProvider3);

  User? get user {
    final user = calloc<COMObject>();

    final hr = _vtable.get_User.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> user)>()(lpVtbl, user);

    if (FAILED(hr)) {
      free(user);
      throwWindowsException(hr);
    }

    if (user.isNull) {
      free(user);
      return null;
    }

    return User.fromPtr(user);
  }

  late final _iWebAccountProvider2 = IWebAccountProvider2.from(this);

  @override
  String get displayPurpose => _iWebAccountProvider2.displayPurpose;

  @override
  String get authority => _iWebAccountProvider2.authority;

  late final _iWebAccountProvider = IWebAccountProvider.from(this);

  @override
  String get id => _iWebAccountProvider.id;

  @override
  String get displayName => _iWebAccountProvider.displayName;

  @Deprecated(
      "IconUri may be altered or unavailable for releases after Windows 8.2. Instead, use Icon.")
  @override
  Uri? get iconUri => _iWebAccountProvider.iconUri;
}

final class _IWebAccountProvider3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> user)>>
      get_User;
}
