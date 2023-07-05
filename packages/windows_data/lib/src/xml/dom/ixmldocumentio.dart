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
const IID_IXmlDocumentIO = '{6cd0e74e-ee65-4489-9ebf-ca43e87ba637}';

class IXmlDocumentIO extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IXmlDocumentIO.fromPtr(super.ptr);

  factory IXmlDocumentIO.from(IInspectable interface) =>
      IXmlDocumentIO.fromPtr(interface.toInterface(IID_IXmlDocumentIO));

  void loadXml(String xml) {
    final xmlHString = xml.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xml)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int xml)>()(
        ptr.ref.lpVtbl, xmlHString);

    WindowsDeleteString(xmlHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void loadXmlWithSettings(String xml, XmlLoadSettings? loadSettings) {
    final xmlHString = xml.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xml,
                            VTablePointer loadSettings)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int xml,
                    VTablePointer loadSettings)>()(ptr.ref.lpVtbl, xmlHString,
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl);

    WindowsDeleteString(xmlHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Future<void> saveToFileAsync(IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> asyncInfo)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> asyncInfo)>()(ptr.ref.lpVtbl,
            file == null ? nullptr : file.ptr.ref.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}
