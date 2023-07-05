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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../storagefile.dart';
import '../storagefolder.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageFileQueryResult2 = '{4e5db9dd-7141-46c4-8be3-e9dc9e27275c}';

class IStorageFileQueryResult2 extends IInspectable
    implements IStorageQueryResultBase {
  // vtable begins at 6, is 1 entries long.
  IStorageFileQueryResult2.fromPtr(super.ptr);

  factory IStorageFileQueryResult2.from(IInspectable interface) =>
      IStorageFileQueryResult2.fromPtr(
          interface.toInterface(IID_IStorageFileQueryResult2));

  IMap<String, IVectorView<TextSegment>> getMatchingPropertiesWithRanges(
      StorageFile? file) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, VTablePointer file,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer file,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, file == null ? nullptr : file.ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    return IMap.fromPtr(result,
        iterableIid: '{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}',
        creator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{5498f4f3-cee4-5b72-9729-815c4ad7b9dc}'));
  }

  late final _iStorageQueryResultBase = IStorageQueryResultBase.from(this);

  @override
  Future<int> getItemCountAsync() =>
      _iStorageQueryResultBase.getItemCountAsync();

  @override
  StorageFolder? get folder => _iStorageQueryResultBase.folder;

  @override
  int add_ContentsChanged(Pointer<COMObject> handler) =>
      _iStorageQueryResultBase.add_ContentsChanged(handler);

  @override
  void remove_ContentsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_ContentsChanged(eventCookie);

  @override
  int add_OptionsChanged(Pointer<COMObject> changedHandler) =>
      _iStorageQueryResultBase.add_OptionsChanged(changedHandler);

  @override
  void remove_OptionsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_OptionsChanged(eventCookie);

  @override
  Future<int> findStartIndexAsync(Object? value) =>
      _iStorageQueryResultBase.findStartIndexAsync(value);

  @override
  QueryOptions? getCurrentQueryOptions() =>
      _iStorageQueryResultBase.getCurrentQueryOptions();

  @override
  void applyNewQueryOptions(QueryOptions? newQueryOptions) =>
      _iStorageQueryResultBase.applyNewQueryOptions(newQueryOptions);
}
