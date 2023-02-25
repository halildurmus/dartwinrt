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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ixmlnode.dart';

/// @nodoc
const IID_IXmlNodeList = '{8c60ad77-83a4-4ec1-9c54-7ba429e13da6}';

/// {@category interface}
class IXmlNodeList extends IInspectable
    implements IVectorView<IXmlNode>, IIterable<IXmlNode> {
  // vtable begins at 6, is 2 entries long.
  IXmlNodeList.fromRawPointer(super.ptr);

  factory IXmlNodeList.from(IInspectable interface) =>
      IXmlNodeList.fromRawPointer(interface.toInterface(IID_IXmlNodeList));

  int get length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  IXmlNode? item(int index) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, Uint32 index, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(LPVTBL, int index, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, index, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  // IVectorView<IXmlNode> methods
  late final _iVectorView = IVectorView<IXmlNode>.fromRawPointer(
      toInterface('{139d959e-e7b5-5cb6-a596-4b544478da9b}'),
      creator: IXmlNode.fromRawPointer,
      iterableIid: '{f1146ffc-8c92-56e8-93f1-711f86722633}');

  @override
  IXmlNode getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(IXmlNode value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int valueSize, List<IXmlNode> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<IXmlNode> first() => _iVectorView.first();

  @override
  List<IXmlNode> toList() => _iVectorView.toList();
}
