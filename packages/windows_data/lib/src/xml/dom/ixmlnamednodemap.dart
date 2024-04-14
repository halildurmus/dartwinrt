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

import 'ixmlnode.dart';

/// @nodoc
const IID_IXmlNamedNodeMap = '{b3a69eb0-aab0-4b82-a6fa-b1453f7c021b}';

class IXmlNamedNodeMap extends IInspectable
    implements IVectorView<IXmlNode?>, IIterable<IXmlNode?> {
  IXmlNamedNodeMap.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlNamedNodeMapVtbl>().ref;

  final _IXmlNamedNodeMapVtbl _vtable;

  factory IXmlNamedNodeMap.from(IInspectable interface) =>
      interface.cast(IXmlNamedNodeMap.fromPtr, IID_IXmlNamedNodeMap);

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

  IXmlNode? getNamedItem(String name) {
    final node = calloc<COMObject>();

    final hr = _vtable.GetNamedItem.asFunction<
        int Function(VTablePointer lpVtbl, int name,
            Pointer<COMObject> node)>()(lpVtbl, name.toHString(), node);

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

  IXmlNode? setNamedItem(IXmlNode? node) {
    final previousNode = calloc<COMObject>();

    final hr = _vtable.SetNamedItem.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer node,
                Pointer<COMObject> previousNode)>()(
        lpVtbl, node.lpVtbl, previousNode);

    if (FAILED(hr)) {
      free(previousNode);
      throwWindowsException(hr);
    }

    if (previousNode.isNull) {
      free(previousNode);
      return null;
    }

    return IXmlNode.fromPtr(previousNode);
  }

  IXmlNode? removeNamedItem(String name) {
    final previousNode = calloc<COMObject>();

    final hr = _vtable.RemoveNamedItem.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> previousNode)>()(
        lpVtbl, name.toHString(), previousNode);

    if (FAILED(hr)) {
      free(previousNode);
      throwWindowsException(hr);
    }

    if (previousNode.isNull) {
      free(previousNode);
      return null;
    }

    return IXmlNode.fromPtr(previousNode);
  }

  IXmlNode? getNamedItemNS(Object? namespaceUri, String name) {
    final node = calloc<COMObject>();

    final hr = _vtable.GetNamedItemNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                int name, Pointer<COMObject> node)>()(lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr, name.toHString(), node);

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

  IXmlNode? removeNamedItemNS(Object? namespaceUri, String name) {
    final previousNode = calloc<COMObject>();

    final hr = _vtable.RemoveNamedItemNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                int name, Pointer<COMObject> previousNode)>()(
        lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr,
        name.toHString(),
        previousNode);

    if (FAILED(hr)) {
      free(previousNode);
      throwWindowsException(hr);
    }

    if (previousNode.isNull) {
      free(previousNode);
      return null;
    }

    return IXmlNode.fromPtr(previousNode);
  }

  IXmlNode? setNamedItemNS(IXmlNode? node) {
    final previousNode = calloc<COMObject>();

    final hr = _vtable.SetNamedItemNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer node,
                Pointer<COMObject> previousNode)>()(
        lpVtbl, node.lpVtbl, previousNode);

    if (FAILED(hr)) {
      free(previousNode);
      throwWindowsException(hr);
    }

    if (previousNode.isNull) {
      free(previousNode);
      return null;
    }

    return IXmlNode.fromPtr(previousNode);
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

final class _IXmlNamedNodeMapVtbl extends Struct {
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
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr name, Pointer<COMObject> node)>>
      GetNamedItem;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer node,
              Pointer<COMObject> previousNode)>> SetNamedItem;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> previousNode)>> RemoveNamedItem;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
              IntPtr name, Pointer<COMObject> node)>> GetNamedItemNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
              IntPtr name, Pointer<COMObject> previousNode)>> RemoveNamedItemNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer node,
              Pointer<COMObject> previousNode)>> SetNamedItemNS;
}
