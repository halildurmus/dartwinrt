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
  IXmlNodeList.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlNodeListVtbl>().ref;

  final _IXmlNodeListVtbl _vtable;

  factory IXmlNodeList.from(IInspectable interface) =>
      interface.cast(IXmlNodeList.fromPtr, IID_IXmlNodeList);

  int get length {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Length.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  IXmlNode? item(int index) {
    final node = calloc<COMObject>();

    final hr = _vtable.Item.asFunction<
        int Function(VTablePointer lpVtbl, int index,
            Pointer<COMObject> node)>()(lpVtbl, index, node);

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
      iterableIid: '{f1146ffc-8c92-56e8-93f1-711f86722633}',
      tObjectCreator: IXmlNode.fromPtr);

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

final class _IXmlNodeListVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Length;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 index, Pointer<COMObject> node)>>
      Item;
}
