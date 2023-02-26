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
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'xmldocument.dart';
import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentStatics = '{5543d254-d757-4b79-9539-232b18f50bf1}';

/// {@category interface}
class IXmlDocumentStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IXmlDocumentStatics.fromRawPointer(super.ptr);

  factory IXmlDocumentStatics.from(IInspectable interface) =>
      IXmlDocumentStatics.fromRawPointer(
          interface.toInterface(IID_IXmlDocumentStatics));

  Future<XmlDocument?> loadFromUriAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<XmlDocument?>();
    final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL uri, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL uri, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri?.release();

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromRawPointer(
        retValuePtr,
        creator: XmlDocument.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<XmlDocument?> loadFromUriWithSettingsAsync(
      Uri? uri, XmlLoadSettings? loadSettings) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<XmlDocument?>();
    final uriUri = uri == null ? null : winrt_uri.Uri.createUri(uri.toString());

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL, LPVTBL uri,
                                LPVTBL loadSettings, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL uri, LPVTBL loadSettings,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
            loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    uriUri?.release();

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromRawPointer(
        retValuePtr,
        creator: XmlDocument.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<XmlDocument?> loadFromFileAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<XmlDocument?>();

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

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromRawPointer(
        retValuePtr,
        creator: XmlDocument.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<XmlDocument?> loadFromFileWithSettingsAsync(
      IStorageFile? file, XmlLoadSettings? loadSettings) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<XmlDocument?>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL, LPVTBL file,
                                LPVTBL loadSettings, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, LPVTBL file, LPVTBL loadSettings,
                        Pointer<COMObject>)>()(
            ptr.ref.lpVtbl,
            file == null ? nullptr : file.ptr.ref.lpVtbl,
            loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromRawPointer(
        retValuePtr,
        creator: XmlDocument.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
