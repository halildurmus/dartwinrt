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
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IQueryOptionsFactory = '{032e1f8c-a9c1-4e71-8011-0dee9d4811a3}';

/// {@category interface}
class IQueryOptionsFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IQueryOptionsFactory.fromRawPointer(super.ptr);

  factory IQueryOptionsFactory.from(IInspectable interface) =>
      IQueryOptionsFactory.fromRawPointer(
          interface.toInterface(IID_IQueryOptionsFactory));

  QueryOptions createCommonFileQuery(
      CommonFileQuery query, IIterable<String> fileTypeFilter) {
    final retValuePtr = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL, Int32 query,
                                LPVTBL fileTypeFilter, Pointer<COMObject>)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL, int query, LPVTBL fileTypeFilter,
                        Pointer<COMObject>)>()(ptr.ref.lpVtbl, query.value,
            fileTypeFilter.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromRawPointer(retValuePtr);
  }

  QueryOptions createCommonFolderQuery(CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Int32 query, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int query, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromRawPointer(retValuePtr);
  }
}
