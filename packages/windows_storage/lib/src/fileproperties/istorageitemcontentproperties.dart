// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'documentproperties.dart';
import 'imageproperties.dart';
import 'istorageitemextraproperties.dart';
import 'musicproperties.dart';
import 'videoproperties.dart';

/// @nodoc
const IID_IStorageItemContentProperties =
    '{05294bad-bc38-48bf-85d7-770e0e2ae0ba}';

/// {@category interface}
class IStorageItemContentProperties extends IInspectable
    implements IStorageItemExtraProperties {
  // vtable begins at 6, is 4 entries long.
  IStorageItemContentProperties.fromPtr(super.ptr);

  factory IStorageItemContentProperties.from(IInspectable interface) =>
      IStorageItemContentProperties.fromPtr(
          interface.toInterface(IID_IStorageItemContentProperties));

  Future<MusicProperties?> getMusicPropertiesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<MusicProperties?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MusicProperties?>.fromPtr(
        retValuePtr,
        creator: MusicProperties.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<VideoProperties?> getVideoPropertiesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<VideoProperties?>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<VideoProperties?>.fromPtr(
        retValuePtr,
        creator: VideoProperties.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<ImageProperties?> getImagePropertiesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<ImageProperties?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ImageProperties?>.fromPtr(
        retValuePtr,
        creator: ImageProperties.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DocumentProperties?> getDocumentPropertiesAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DocumentProperties?>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DocumentProperties?>.fromPtr(
        retValuePtr,
        creator: DocumentProperties.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  late final _iStorageItemExtraProperties =
      IStorageItemExtraProperties.from(this);

  @override
  Future<IMap<String, Object?>> retrievePropertiesAsync(
          IIterable<String>? propertiesToRetrieve) =>
      _iStorageItemExtraProperties
          .retrievePropertiesAsync(propertiesToRetrieve);

  @override
  Future<void> savePropertiesAsync(
          IIterable<IKeyValuePair<String, Object?>>? propertiesToSave) =>
      _iStorageItemExtraProperties.savePropertiesAsync(propertiesToSave);

  @override
  Future<void> savePropertiesAsyncOverloadDefault() =>
      _iStorageItemExtraProperties.savePropertiesAsyncOverloadDefault();
}
