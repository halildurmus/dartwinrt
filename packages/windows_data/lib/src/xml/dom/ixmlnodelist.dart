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

import 'ixmlnode.dart';

/// @nodoc
const IID_IXmlNodeList = '{8c60ad77-83a4-4ec1-9c54-7ba429e13da6}';

class IXmlNodeList extends IInspectable
    implements IVectorView<IXmlNode?>, IIterable<IXmlNode?> {
  // vtable begins at 6, is 2 entries long.
  IXmlNodeList.fromPtr(super.ptr);

  factory IXmlNodeList.from(IInspectable interface) =>
      IXmlNodeList.fromPtr(interface.toInterface(IID_IXmlNodeList));

  int get length {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  IXmlNode? item(int index) {
    final node = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Uint32 index,
                        Pointer<COMObject> node)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, int index,
                Pointer<COMObject> node)>()(ptr.ref.lpVtbl, index, node);

    if (FAILED(hr)) {
      free(node);
      throwWindowsException(hr);
    }

    if (node.isNull) {
      free(node);
      return null;
    }

    return IXmlNode.fromPtr(node);
  }

  late final _iVectorView = IVectorView<IXmlNode?>.fromPtr(
      toInterface('{139d959e-e7b5-5cb6-a596-4b544478da9b}'),
      creator: IXmlNode.fromPtr,
      iterableIid: '{f1146ffc-8c92-56e8-93f1-711f86722633}');

  @override
  IXmlNode? getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  (bool, {int index}) indexOf(IXmlNode? value) => _iVectorView.indexOf(value);

  @override
  (int, {List<IXmlNode?> items}) getMany(int startIndex, int itemsSize) =>
      _iVectorView.getMany(startIndex, itemsSize);

  @override
  IIterator<IXmlNode?> first() => _iVectorView.first();

  @override
  List<IXmlNode?> toList() => _iVectorView.toList();

  @override
  IXmlNode? operator [](int index) => _iVectorView[index];

  @override
  List<IXmlNode?> operator +(List<IXmlNode?> other) => toList() + other;
}
