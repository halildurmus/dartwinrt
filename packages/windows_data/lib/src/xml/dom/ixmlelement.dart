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
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmlattribute.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlElement = '{2dfb8a1f-6b10-4ef8-9f83-efcce8faec37}';

class IXmlElement extends IInspectable
    implements IXmlNode, IXmlNodeSelector, IXmlNodeSerializer {
  IXmlElement.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlElementVtbl>().ref;

  final _IXmlElementVtbl _vtable;

  factory IXmlElement.from(IInspectable interface) =>
      interface.cast(IXmlElement.fromPtr, IID_IXmlElement);

  String get tagName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_TagName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String getAttribute(String attributeName) {
    final attributeValue = calloc<IntPtr>();

    try {
      final hr = _vtable.GetAttribute.asFunction<
              int Function(VTablePointer lpVtbl, int attributeName,
                  Pointer<IntPtr> attributeValue)>()(
          lpVtbl, attributeName.toHString(), attributeValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return attributeValue.toDartString();
    } finally {
      free(attributeValue);
    }
  }

  void setAttribute(String attributeName, String attributeValue) {
    final hr = _vtable.SetAttribute.asFunction<
            int Function(
                VTablePointer lpVtbl, int attributeName, int attributeValue)>()(
        lpVtbl, attributeName.toHString(), attributeValue.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeAttribute(String attributeName) {
    final hr = _vtable.RemoveAttribute.asFunction<
            int Function(VTablePointer lpVtbl, int attributeName)>()(
        lpVtbl, attributeName.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  XmlAttribute? getAttributeNode(String attributeName) {
    final attributeNode = calloc<COMObject>();

    final hr = _vtable.GetAttributeNode.asFunction<
            int Function(VTablePointer lpVtbl, int attributeName,
                Pointer<COMObject> attributeNode)>()(
        lpVtbl, attributeName.toHString(), attributeNode);

    if (FAILED(hr)) {
      free(attributeNode);
      throwWindowsException(hr);
    }

    if (attributeNode.isNull) {
      free(attributeNode);
      return null;
    }

    return XmlAttribute.fromPtr(attributeNode);
  }

  XmlAttribute? setAttributeNode(XmlAttribute? newAttribute) {
    final previousAttribute = calloc<COMObject>();

    final hr = _vtable.SetAttributeNode.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                Pointer<COMObject> previousAttribute)>()(
        lpVtbl, newAttribute.lpVtbl, previousAttribute);

    if (FAILED(hr)) {
      free(previousAttribute);
      throwWindowsException(hr);
    }

    if (previousAttribute.isNull) {
      free(previousAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(previousAttribute);
  }

  XmlAttribute? removeAttributeNode(XmlAttribute? attributeNode) {
    final removedAttribute = calloc<COMObject>();

    final hr = _vtable.RemoveAttributeNode.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer attributeNode,
                Pointer<COMObject> removedAttribute)>()(
        lpVtbl, attributeNode.lpVtbl, removedAttribute);

    if (FAILED(hr)) {
      free(removedAttribute);
      throwWindowsException(hr);
    }

    if (removedAttribute.isNull) {
      free(removedAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(removedAttribute);
  }

  XmlNodeList getElementsByTagName(String tagName) {
    final elements = calloc<COMObject>();

    final hr = _vtable.GetElementsByTagName.asFunction<
            int Function(VTablePointer lpVtbl, int tagName,
                Pointer<COMObject> elements)>()(
        lpVtbl, tagName.toHString(), elements);

    if (FAILED(hr)) {
      free(elements);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(elements);
  }

  void setAttributeNS(
      Object? namespaceUri, String qualifiedName, String value) {
    final hr = _vtable.SetAttributeNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                int qualifiedName, int value)>()(
        lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr,
        qualifiedName.toHString(),
        value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getAttributeNS(Object? namespaceUri, String localName) {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.GetAttributeNS.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                  int localName, Pointer<IntPtr> value)>()(
          lpVtbl,
          namespaceUri?.boxValue().lpVtbl ?? nullptr,
          localName.toHString(),
          value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  void removeAttributeNS(Object? namespaceUri, String localName) {
    final hr = _vtable.RemoveAttributeNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                int localName)>()(lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr, localName.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  XmlAttribute? setAttributeNodeNS(XmlAttribute? newAttribute) {
    final previousAttribute = calloc<COMObject>();

    final hr = _vtable.SetAttributeNodeNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                Pointer<COMObject> previousAttribute)>()(
        lpVtbl, newAttribute.lpVtbl, previousAttribute);

    if (FAILED(hr)) {
      free(previousAttribute);
      throwWindowsException(hr);
    }

    if (previousAttribute.isNull) {
      free(previousAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(previousAttribute);
  }

  XmlAttribute? getAttributeNodeNS(Object? namespaceUri, String localName) {
    final previousAttribute = calloc<COMObject>();

    final hr = _vtable.GetAttributeNodeNS.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                int localName, Pointer<COMObject> previousAttribute)>()(
        lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr,
        localName.toHString(),
        previousAttribute);

    if (FAILED(hr)) {
      free(previousAttribute);
      throwWindowsException(hr);
    }

    if (previousAttribute.isNull) {
      free(previousAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(previousAttribute);
  }

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

final class _IXmlElementVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_TagName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr attributeName,
              Pointer<IntPtr> attributeValue)>> GetAttribute;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr attributeName,
              IntPtr attributeValue)>> SetAttribute;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr attributeName)>>
      RemoveAttribute;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr attributeName,
              Pointer<COMObject> attributeNode)>> GetAttributeNode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer newAttribute,
              Pointer<COMObject> previousAttribute)>> SetAttributeNode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer attributeNode,
              Pointer<COMObject> removedAttribute)>> RemoveAttributeNode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr tagName,
              Pointer<COMObject> elements)>> GetElementsByTagName;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
              IntPtr qualifiedName, IntPtr value)>> SetAttributeNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
              IntPtr localName, Pointer<IntPtr> value)>> GetAttributeNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
              IntPtr localName)>> RemoveAttributeNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer newAttribute,
              Pointer<COMObject> previousAttribute)>> SetAttributeNodeNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer namespaceUri,
              IntPtr localName,
              Pointer<COMObject> previousAttribute)>> GetAttributeNodeNS;
}
