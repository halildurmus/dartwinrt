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

import 'ixmlcharacterdata.dart';
import 'ixmlnode.dart';
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlText = '{f931a4cb-308d-4760-a1d5-43b67450ac7e}';

class IXmlText extends IInspectable
    implements
        IXmlCharacterData,
        IXmlNode,
        IXmlNodeSelector,
        IXmlNodeSerializer {
  IXmlText.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlTextVtbl>().ref;

  final _IXmlTextVtbl _vtable;

  factory IXmlText.from(IInspectable interface) =>
      interface.cast(IXmlText.fromPtr, IID_IXmlText);

  IXmlText? splitText(int offset) {
    final secondPart = calloc<COMObject>();

    final hr = _vtable.SplitText.asFunction<
        int Function(VTablePointer lpVtbl, int offset,
            Pointer<COMObject> secondPart)>()(lpVtbl, offset, secondPart);

    if (FAILED(hr)) {
      free(secondPart);
      throwWindowsException(hr);
    }

    if (secondPart.isNull) {
      free(secondPart);
      return null;
    }

    return IXmlText.fromPtr(secondPart);
  }

  late final _iXmlCharacterData = IXmlCharacterData.from(this);

  @override
  String get data => _iXmlCharacterData.data;

  @override
  set data(String value) => _iXmlCharacterData.data = value;

  @override
  int get length => _iXmlCharacterData.length;

  @override
  String substringData(int offset, int count) =>
      _iXmlCharacterData.substringData(offset, count);

  @override
  void appendData(String data) => _iXmlCharacterData.appendData(data);

  @override
  void insertData(int offset, String data) =>
      _iXmlCharacterData.insertData(offset, data);

  @override
  void deleteData(int offset, int count) =>
      _iXmlCharacterData.deleteData(offset, count);

  @override
  void replaceData(int offset, int count, String data) =>
      _iXmlCharacterData.replaceData(offset, count, data);

  late final _iXmlNode = IXmlNode.from(this);

  @override
  Object? get nodeValue => _iXmlNode.nodeValue;

  @override
  set nodeValue(Object? value) => _iXmlNode.nodeValue = value;

  @override
  NodeType get nodeType => _iXmlNode.nodeType;

  @override
  String get nodeName => _iXmlNode.nodeName;

  @override
  IXmlNode? get parentNode => _iXmlNode.parentNode;

  @override
  XmlNodeList? get childNodes => _iXmlNode.childNodes;

  @override
  IXmlNode? get firstChild => _iXmlNode.firstChild;

  @override
  IXmlNode? get lastChild => _iXmlNode.lastChild;

  @override
  IXmlNode? get previousSibling => _iXmlNode.previousSibling;

  @override
  IXmlNode? get nextSibling => _iXmlNode.nextSibling;

  @override
  XmlNamedNodeMap? get attributes => _iXmlNode.attributes;

  @override
  bool hasChildNodes() => _iXmlNode.hasChildNodes();

  @override
  XmlDocument? get ownerDocument => _iXmlNode.ownerDocument;

  @override
  IXmlNode? insertBefore(IXmlNode? newChild, IXmlNode? referenceChild) =>
      _iXmlNode.insertBefore(newChild, referenceChild);

  @override
  IXmlNode? replaceChild(IXmlNode? newChild, IXmlNode? referenceChild) =>
      _iXmlNode.replaceChild(newChild, referenceChild);

  @override
  IXmlNode? removeChild(IXmlNode? childNode) =>
      _iXmlNode.removeChild(childNode);

  @override
  IXmlNode? appendChild(IXmlNode? newChild) => _iXmlNode.appendChild(newChild);

  @override
  IXmlNode? cloneNode(bool deep) => _iXmlNode.cloneNode(deep);

  @override
  Object? get namespaceUri => _iXmlNode.namespaceUri;

  @override
  Object? get localName => _iXmlNode.localName;

  @override
  Object? get prefix => _iXmlNode.prefix;

  @override
  void normalize() => _iXmlNode.normalize();

  @override
  set prefix(Object? value) => _iXmlNode.prefix = value;

  late final _iXmlNodeSelector = IXmlNodeSelector.from(this);

  @override
  IXmlNode? selectSingleNode(String xpath) =>
      _iXmlNodeSelector.selectSingleNode(xpath);

  @override
  XmlNodeList selectNodes(String xpath) => _iXmlNodeSelector.selectNodes(xpath);

  @override
  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectSingleNodeNS(xpath, namespaces);

  @override
  XmlNodeList selectNodesNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectNodesNS(xpath, namespaces);

  late final _iXmlNodeSerializer = IXmlNodeSerializer.from(this);

  @override
  String getXml() => _iXmlNodeSerializer.getXml();

  @override
  String get innerText => _iXmlNodeSerializer.innerText;

  @override
  set innerText(String value) => _iXmlNodeSerializer.innerText = value;
}

final class _IXmlTextVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 offset,
              Pointer<COMObject> secondPart)>> SplitText;
}
