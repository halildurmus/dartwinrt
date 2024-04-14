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

import 'ixmlnamednodemap.dart';
import 'ixmlnode.dart';

/// Encapsulates iteration through the collection of attribute nodes.
class XmlNamedNodeMap extends IInspectable
    implements IXmlNamedNodeMap, IVectorView<IXmlNode?>, IIterable<IXmlNode?> {
  XmlNamedNodeMap.fromPtr(super.ptr);

  late final _iXmlNamedNodeMap = IXmlNamedNodeMap.from(this);

  @override
  int get length => _iXmlNamedNodeMap.length;

  @override
  IXmlNode? item(int index) => _iXmlNamedNodeMap.item(index);

  @override
  IXmlNode? getNamedItem(String name) => _iXmlNamedNodeMap.getNamedItem(name);

  @override
  IXmlNode? setNamedItem(IXmlNode? node) =>
      _iXmlNamedNodeMap.setNamedItem(node);

  @override
  IXmlNode? removeNamedItem(String name) =>
      _iXmlNamedNodeMap.removeNamedItem(name);

  @override
  IXmlNode? getNamedItemNS(Object? namespaceUri, String name) =>
      _iXmlNamedNodeMap.getNamedItemNS(namespaceUri, name);

  @override
  IXmlNode? removeNamedItemNS(Object? namespaceUri, String name) =>
      _iXmlNamedNodeMap.removeNamedItemNS(namespaceUri, name);

  @override
  IXmlNode? setNamedItemNS(IXmlNode? node) =>
      _iXmlNamedNodeMap.setNamedItemNS(node);

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
