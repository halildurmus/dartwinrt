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

import '../fileproperties/propertyprefetchoptions.dart';
import '../fileproperties/thumbnailmode.dart';
import '../fileproperties/thumbnailoptions.dart';
import 'datestackoption.dart';
import 'folderdepth.dart';
import 'indexeroption.dart';
import 'sortentry.dart';

/// @nodoc
const IID_IQueryOptions = '{1e5e46ee-0f45-4838-a8e9-d0479d446c30}';

class IQueryOptions extends IInspectable {
  IQueryOptions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IQueryOptionsVtbl>().ref;

  final _IQueryOptionsVtbl _vtable;

  factory IQueryOptions.from(IInspectable interface) =>
      interface.cast(IQueryOptions.fromPtr, IID_IQueryOptions);

  IVector<String>? get fileTypeFilter {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FileTypeFilter.asFunction<
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

  FolderDepth get folderDepth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_FolderDepth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return FolderDepth.from(value.value);
    } finally {
      free(value);
    }
  }

  set folderDepth(FolderDepth value) {
    final hr = _vtable.put_FolderDepth
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get applicationSearchFilter {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_ApplicationSearchFilter.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set applicationSearchFilter(String value) {
    final hr = _vtable.put_ApplicationSearchFilter
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get userSearchFilter {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_UserSearchFilter.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set userSearchFilter(String value) {
    final hr = _vtable.put_UserSearchFilter
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String get language {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Language.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  set language(String value) {
    final hr = _vtable.put_Language
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IndexerOption get indexerOption {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_IndexerOption.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return IndexerOption.from(value.value);
    } finally {
      free(value);
    }
  }

  set indexerOption(IndexerOption value) {
    final hr = _vtable.put_IndexerOption
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  IVector<SortEntry>? get sortOrder {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SortOrder.asFunction<
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
        iterableIid: '{35aff6f9-ef75-5280-bb84-a2bf8317cf35}');
  }

  String get groupPropertyName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_GroupPropertyName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DateStackOption get dateStackOption {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_DateStackOption.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DateStackOption.from(value.value);
    } finally {
      free(value);
    }
  }

  String saveToString() {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.SaveToString.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  void loadFromString(String value) {
    final hr = _vtable.LoadFromString.asFunction<
        int Function(
            VTablePointer lpVtbl, int value)>()(lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setThumbnailPrefetch(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final hr = _vtable.SetThumbnailPrefetch.asFunction<
        int Function(VTablePointer lpVtbl, int mode, int requestedSize,
            int options)>()(lpVtbl, mode.value, requestedSize, options.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setPropertyPrefetch(PropertyPrefetchOptions options,
      IIterable<String>? propertiesToRetrieve) {
    final hr = _vtable.SetPropertyPrefetch.asFunction<
            int Function(VTablePointer lpVtbl, int options,
                VTablePointer propertiesToRetrieve)>()(
        lpVtbl, options.value, propertiesToRetrieve.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IQueryOptionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FileTypeFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_FolderDepth;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_FolderDepth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_ApplicationSearchFilter;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_ApplicationSearchFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_UserSearchFilter;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_UserSearchFilter;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Language;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Language;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_IndexerOption;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_IndexerOption;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SortOrder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_GroupPropertyName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_DateStackOption;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      SaveToString;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      LoadFromString;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 mode,
              Uint32 requestedSize, Uint32 options)>> SetThumbnailPrefetch;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 options,
              VTablePointer propertiesToRetrieve)>> SetPropertyPrefetch;
}
