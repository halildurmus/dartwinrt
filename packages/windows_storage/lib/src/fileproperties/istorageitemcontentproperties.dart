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

import 'documentproperties.dart';
import 'imageproperties.dart';
import 'istorageitemextraproperties.dart';
import 'musicproperties.dart';
import 'videoproperties.dart';

/// @nodoc
const IID_IStorageItemContentProperties =
    '{05294bad-bc38-48bf-85d7-770e0e2ae0ba}';

class IStorageItemContentProperties extends IInspectable
    implements IStorageItemExtraProperties {
  IStorageItemContentProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageItemContentPropertiesVtbl>().ref;

  final _IStorageItemContentPropertiesVtbl _vtable;

  factory IStorageItemContentProperties.from(IInspectable interface) =>
      interface.cast(IStorageItemContentProperties.fromPtr,
          IID_IStorageItemContentProperties);

  Future<MusicProperties?> getMusicPropertiesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetMusicPropertiesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<MusicProperties?>.fromPtr(operation,
        tResultObjectCreator: MusicProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<VideoProperties?> getVideoPropertiesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetVideoPropertiesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<VideoProperties?>.fromPtr(operation,
        tResultObjectCreator: VideoProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<ImageProperties?> getImagePropertiesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetImagePropertiesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ImageProperties?>.fromPtr(operation,
        tResultObjectCreator: ImageProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DocumentProperties?> getDocumentPropertiesAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetDocumentPropertiesAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DocumentProperties?>.fromPtr(
        operation,
        tResultObjectCreator: DocumentProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
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

final class _IStorageItemContentPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetMusicPropertiesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetVideoPropertiesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetImagePropertiesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetDocumentPropertiesAsync;
}
