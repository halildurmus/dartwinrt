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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentIO = '{6cd0e74e-ee65-4489-9ebf-ca43e87ba637}';

/// {@category interface}
class IXmlDocumentIO extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IXmlDocumentIO.fromRawPointer(super.ptr);

  factory IXmlDocumentIO.from(IInspectable interface) =>
      IXmlDocumentIO.fromRawPointer(interface.toInterface(IID_IXmlDocumentIO));

  void loadXml(String xml) {
    final xmlHString = convertToHString(xml);

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr xml)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int xml)>()(ptr.ref.lpVtbl, xmlHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(xmlHString);
  }

  void loadXmlWithSettings(String xml, XmlLoadSettings? loadSettings) {
    final xmlHString = convertToHString(xml);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, IntPtr xml, LPVTBL loadSettings)>>>()
            .value
            .asFunction<int Function(LPVTBL, int xml, LPVTBL loadSettings)>()(
        ptr.ref.lpVtbl,
        xmlHString,
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(xmlHString);
  }

  Future<void> saveToFileAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL file, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL file, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        file == null ? nullptr : file.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }
}
