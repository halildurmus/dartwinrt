// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentIO2 = '{5d034661-7bd8-4ad5-9ebf-81e6347263b1}';

/// {@category interface}
class IXmlDocumentIO2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IXmlDocumentIO2.fromRawPointer(super.ptr);

  factory IXmlDocumentIO2.from(IInspectable interface) =>
      IXmlDocumentIO2.fromRawPointer(
          interface.toInterface(IID_IXmlDocumentIO2));

  void loadXmlFromBuffer(IBuffer? buffer) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<NativeFunction<HRESULT Function(LPVTBL, LPVTBL buffer)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL buffer)>()(
        ptr.ref.lpVtbl, buffer == null ? nullptr : buffer.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void loadXmlFromBufferWithSettings(
      IBuffer? buffer, XmlLoadSettings? loadSettings) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL buffer, LPVTBL loadSettings)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL buffer, LPVTBL loadSettings)>()(
        ptr.ref.lpVtbl,
        buffer == null ? nullptr : buffer.ptr.ref.lpVtbl,
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
