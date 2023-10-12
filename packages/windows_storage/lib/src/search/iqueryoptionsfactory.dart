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

import 'commonfilequery.dart';
import 'commonfolderquery.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IQueryOptionsFactory = '{032e1f8c-a9c1-4e71-8011-0dee9d4811a3}';

class IQueryOptionsFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IQueryOptionsFactory.fromPtr(super.ptr);

  factory IQueryOptionsFactory.from(IInspectable interface) =>
      interface.cast(IQueryOptionsFactory.fromPtr, IID_IQueryOptionsFactory);

  QueryOptions createCommonFileQuery(
      CommonFileQuery query, IIterable<String>? fileTypeFilter) {
    final queryOptions = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 query,
                            VTablePointer fileTypeFilter,
                            Pointer<COMObject> queryOptions)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int query,
                    VTablePointer fileTypeFilter,
                    Pointer<COMObject> queryOptions)>()(
        lpVtbl, query.value, fileTypeFilter.lpVtbl, queryOptions);

    if (FAILED(hr)) {
      free(queryOptions);
      throwWindowsException(hr);
    }

    return QueryOptions.fromPtr(queryOptions);
  }

  QueryOptions createCommonFolderQuery(CommonFolderQuery query) {
    final queryOptions = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> queryOptions)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> queryOptions)>()(
        lpVtbl, query.value, queryOptions);

    if (FAILED(hr)) {
      free(queryOptions);
      throwWindowsException(hr);
    }

    return QueryOptions.fromPtr(queryOptions);
  }
}
