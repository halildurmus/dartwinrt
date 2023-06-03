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
import 'package:windows_storage/windows_storage.dart';

import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentIO2 = '{5d034661-7bd8-4ad5-9ebf-81e6347263b1}';

class IXmlDocumentIO2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IXmlDocumentIO2.fromPtr(super.ptr);

  factory IXmlDocumentIO2.from(IInspectable interface) =>
      IXmlDocumentIO2.fromPtr(interface.toInterface(IID_IXmlDocumentIO2));

  void loadXmlFromBuffer(IBuffer? buffer) {
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer buffer)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        ptr.ref.lpVtbl, bufferPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void loadXmlFromBufferWithSettings(
      IBuffer? buffer, XmlLoadSettings? loadSettings) {
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;
    final loadSettingsPtr =
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer buffer,
                                VTablePointer loadSettings)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer buffer,
                        VTablePointer loadSettings)>()(
            ptr.ref.lpVtbl, bufferPtr, loadSettingsPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
