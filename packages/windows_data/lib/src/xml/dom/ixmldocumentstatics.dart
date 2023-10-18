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

import 'xmldocument.dart';
import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentStatics = '{5543d254-d757-4b79-9539-232b18f50bf1}';

class IXmlDocumentStatics extends IInspectable {
  IXmlDocumentStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlDocumentStaticsVtbl>().ref;

  final _IXmlDocumentStaticsVtbl _vtable;

  factory IXmlDocumentStatics.from(IInspectable interface) =>
      interface.cast(IXmlDocumentStatics.fromPtr, IID_IXmlDocumentStatics);

  Future<XmlDocument?> loadFromUriAsync(Uri? uri) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.LoadFromUriAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, uri?.toWinRTUri().lpVtbl ?? nullptr, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(asyncInfo,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromUriWithSettingsAsync(
      Uri? uri, XmlLoadSettings? loadSettings) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.LoadFromUriWithSettingsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer uri,
                VTablePointer loadSettings, Pointer<COMObject> asyncInfo)>()(
        lpVtbl,
        uri?.toWinRTUri().lpVtbl ?? nullptr,
        loadSettings.lpVtbl,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(asyncInfo,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromFileAsync(IStorageFile? file) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.LoadFromFileAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer file,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, file.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(asyncInfo,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromFileWithSettingsAsync(
      IStorageFile? file, XmlLoadSettings? loadSettings) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.LoadFromFileWithSettingsAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer file,
                VTablePointer loadSettings, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, file.lpVtbl, loadSettings.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(asyncInfo,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IXmlDocumentStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer uri,
              Pointer<COMObject> asyncInfo)>> LoadFromUriAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer uri,
              VTablePointer loadSettings,
              Pointer<COMObject> asyncInfo)>> LoadFromUriWithSettingsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
              Pointer<COMObject> asyncInfo)>> LoadFromFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer file,
              VTablePointer loadSettings,
              Pointer<COMObject> asyncInfo)>> LoadFromFileWithSettingsAsync;
}
