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

import 'ixmlnode.dart';
import 'ixmlnodelist.dart';

/// Describes a collection of nodes.
class XmlNodeList extends IInspectable
    implements IXmlNodeList, IVectorView<IXmlNode>, IIterable<IXmlNode> {
  XmlNodeList.fromPtr(super.ptr);

  late final _iXmlNodeList = IXmlNodeList.from(this);

  @override
  int get length => _iXmlNodeList.length;

  @override
  IXmlNode? item(int index) => _iXmlNodeList.item(index);

  late final _iVectorView = IVectorView<IXmlNode>.fromPtr(
      toInterface('{139d959e-e7b5-5cb6-a596-4b544478da9b}'),
      creator: IXmlNode.fromPtr,
      iterableIid: '{f1146ffc-8c92-56e8-93f1-711f86722633}');

  @override
  IXmlNode getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(IXmlNode value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int itemsSize, List<IXmlNode> items) =>
      _iVectorView.getMany(startIndex, itemsSize, items);

  @override
  IIterator<IXmlNode> first() => _iVectorView.first();

  @override
  List<IXmlNode> toList() => _iVectorView.toList();

  @override
  IXmlNode operator [](int index) => _iVectorView[index];

  @override
  List<IXmlNode> operator +(List<IXmlNode> other) => toList() + other;
}
