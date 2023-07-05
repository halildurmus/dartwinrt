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
  // vtable begins at 6, is 13 entries long.
  IXmlElement.fromPtr(super.ptr);

  factory IXmlElement.from(IInspectable interface) =>
      IXmlElement.fromPtr(interface.toInterface(IID_IXmlElement));

  String get tagName {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  String getAttribute(String attributeName) {
    final attributeValue = calloc<IntPtr>();

    try {
      final attributeNameHString = attributeName.toHString();

      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              IntPtr attributeName,
                              Pointer<IntPtr> attributeValue)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int attributeName,
                      Pointer<IntPtr> attributeValue)>()(
          ptr.ref.lpVtbl, attributeNameHString, attributeValue);

      WindowsDeleteString(attributeNameHString);

      if (FAILED(hr)) throwWindowsException(hr);

      return attributeValue.toDartString();
    } finally {
      WindowsDeleteString(attributeValue.value);
      free(attributeValue);
    }
  }

  void setAttribute(String attributeName, String attributeValue) {
    final attributeNameHString = attributeName.toHString();
    final attributeValueHString = attributeValue.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(VTablePointer lpVtbl,
                                IntPtr attributeName, IntPtr attributeValue)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int attributeName,
                        int attributeValue)>()(
            ptr.ref.lpVtbl, attributeNameHString, attributeValueHString);

    WindowsDeleteString(attributeNameHString);
    WindowsDeleteString(attributeValueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeAttribute(String attributeName) {
    final attributeNameHString = attributeName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr attributeName)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int attributeName)>()(
        ptr.ref.lpVtbl, attributeNameHString);

    WindowsDeleteString(attributeNameHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  XmlAttribute? getAttributeNode(String attributeName) {
    final attributeNode = calloc<COMObject>();
    final attributeNameHString = attributeName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr attributeName,
                                Pointer<COMObject> attributeNode)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int attributeName,
                        Pointer<COMObject> attributeNode)>()(
            ptr.ref.lpVtbl, attributeNameHString, attributeNode);

    WindowsDeleteString(attributeNameHString);

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

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newAttribute,
                            Pointer<COMObject> previousAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                    Pointer<COMObject> previousAttribute)>()(
        ptr.ref.lpVtbl,
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl,
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

  XmlAttribute? removeAttributeNode(XmlAttribute? attributeNode) {
    final removedAttribute = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer attributeNode,
                            Pointer<COMObject> removedAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer attributeNode,
                    Pointer<COMObject> removedAttribute)>()(
        ptr.ref.lpVtbl,
        attributeNode == null ? nullptr : attributeNode.ptr.ref.lpVtbl,
        removedAttribute);

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
    final tagNameHString = tagName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tagName,
                            Pointer<COMObject> elements)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tagName,
                    Pointer<COMObject> elements)>()(
        ptr.ref.lpVtbl, tagNameHString, elements);

    WindowsDeleteString(tagNameHString);

    if (FAILED(hr)) {
      free(elements);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(elements);
  }

  void setAttributeNS(
      Object? namespaceUri, String qualifiedName, String value) {
    final qualifiedNameHString = qualifiedName.toHString();
    final valueHString = value.toHString();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer namespaceUri,
                            IntPtr qualifiedName,
                            IntPtr value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int qualifiedName, int value)>()(
        ptr.ref.lpVtbl,
        namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr,
        qualifiedNameHString,
        valueHString);

    WindowsDeleteString(qualifiedNameHString);
    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  String getAttributeNS(Object? namespaceUri, String localName) {
    final value = calloc<IntPtr>();

    try {
      final localNameHString = localName.toHString();

      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer namespaceUri,
                              IntPtr localName,
                              Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                      int localName, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl,
          namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr,
          localNameHString,
          value);

      WindowsDeleteString(localNameHString);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }

  void removeAttributeNS(Object? namespaceUri, String localName) {
    final localNameHString = localName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer namespaceUri, IntPtr localName)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int localName)>()(ptr.ref.lpVtbl,
        namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr, localNameHString);

    WindowsDeleteString(localNameHString);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  XmlAttribute? setAttributeNodeNS(XmlAttribute? newAttribute) {
    final previousAttribute = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newAttribute,
                            Pointer<COMObject> previousAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                    Pointer<COMObject> previousAttribute)>()(
        ptr.ref.lpVtbl,
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl,
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

  XmlAttribute? getAttributeNodeNS(Object? namespaceUri, String localName) {
    final previousAttribute = calloc<COMObject>();
    final localNameHString = localName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer namespaceUri,
                            IntPtr localName,
                            Pointer<COMObject> previousAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int localName, Pointer<COMObject> previousAttribute)>()(
        ptr.ref.lpVtbl,
        namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr,
        localNameHString,
        previousAttribute);

    WindowsDeleteString(localNameHString);

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
  XmlNodeList get childNodes => _iXmlNode.childNodes;

  @override
  IXmlNode? get firstChild => _iXmlNode.firstChild;

  @override
  IXmlNode? get lastChild => _iXmlNode.lastChild;

  @override
  IXmlNode? get previousSibling => _iXmlNode.previousSibling;

  @override
  IXmlNode? get nextSibling => _iXmlNode.nextSibling;

  @override
  XmlNamedNodeMap get attributes => _iXmlNode.attributes;

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
