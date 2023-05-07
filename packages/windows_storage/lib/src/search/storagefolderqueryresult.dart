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

import '../storagefolder.dart';
import 'istoragefolderqueryresult.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// Provides access to the results of a query that lists the folder (or file
/// groups) in the folder being queried (which is represented by a
/// StorageFolder). You can use a StorageFolderQueryResult to enumerate
/// folders or file groups in that folder.
///
/// {@category class}
class StorageFolderQueryResult extends IInspectable
    implements IStorageFolderQueryResult, IStorageQueryResultBase {
  StorageFolderQueryResult.fromPtr(super.ptr);

  late final _iStorageFolderQueryResult = IStorageFolderQueryResult.from(this);

  @override
  Future<List<StorageFolder>> getFoldersAsync(
          int startIndex, int maxNumberOfItems) =>
      _iStorageFolderQueryResult.getFoldersAsync(startIndex, maxNumberOfItems);

  @override
  Future<List<StorageFolder>> getFoldersAsyncDefaultStartAndCount() =>
      _iStorageFolderQueryResult.getFoldersAsyncDefaultStartAndCount();

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
