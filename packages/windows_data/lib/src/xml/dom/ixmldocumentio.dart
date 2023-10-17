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
import 'package:windows_storage/windows_storage.dart';

import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentIO = '{6cd0e74e-ee65-4489-9ebf-ca43e87ba637}';

class IXmlDocumentIO extends IInspectable {
  IXmlDocumentIO.fromPtr(super.ptr);

  factory IXmlDocumentIO.from(IInspectable interface) =>
      interface.cast(IXmlDocumentIO.fromPtr, IID_IXmlDocumentIO);

  void loadXml(String xml) {
    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xml)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int xml)>()(
        lpVtbl, xml.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void loadXmlWithSettings(String xml, XmlLoadSettings? loadSettings) {
    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xml,
                            VTablePointer loadSettings)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int xml,
                    VTablePointer loadSettings)>()(
        lpVtbl, xml.toHString(), loadSettings.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<void> saveToFileAsync(IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr =
        vtable
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
                        Pointer<COMObject> asyncInfo)>()(
            lpVtbl, file.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}
