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

import 'istorageitemextraproperties.dart';

/// @nodoc
const IID_IDocumentProperties = '{7eab19bc-1821-4923-b4a9-0aea404d0070}';

class IDocumentProperties extends IInspectable
    implements IStorageItemExtraProperties {
  IDocumentProperties.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDocumentPropertiesVtbl>().ref;

  final _IDocumentPropertiesVtbl _vtable;

  factory IDocumentProperties.from(IInspectable interface) =>
      interface.cast(IDocumentProperties.fromPtr, IID_IDocumentProperties);

  IVector<String>? get author {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Author.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVector.fromPtr(value,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  String get title {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Title.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set title(String value) {
    final hr = _vtable.put_Title
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<String>? get keywords {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Keywords.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVector.fromPtr(value,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }

  String get comment {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Comment.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set comment(String value) {
    final hr = _vtable.put_Comment
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
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

final class _IDocumentPropertiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Author;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Title;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Title;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Keywords;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Comment;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Comment;
}
