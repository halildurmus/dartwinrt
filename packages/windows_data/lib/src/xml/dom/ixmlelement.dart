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

/// {@category interface}
class IXmlElement extends IInspectable
    implements IXmlNode, IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 13 entries long.
  IXmlElement.fromPtr(super.ptr);

  factory IXmlElement.from(IInspectable interface) =>
      IXmlElement.fromPtr(interface.toInterface(IID_IXmlElement));

  String get tagName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String getAttribute(String attributeName) {
    final retValuePtr = calloc<HSTRING>();

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
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int attributeName,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, attributeNameHString, retValuePtr);

      WindowsDeleteString(attributeNameHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
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

    if (FAILED(hr)) throw WindowsException(hr);
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

    if (FAILED(hr)) throw WindowsException(hr);
  }

  XmlAttribute? getAttributeNode(String attributeName) {
    final retValuePtr = calloc<COMObject>();
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
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int attributeName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, attributeNameHString, retValuePtr);

    WindowsDeleteString(attributeNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromPtr(retValuePtr);
  }

  XmlAttribute? setAttributeNode(XmlAttribute? newAttribute) {
    final retValuePtr = calloc<COMObject>();
    final newAttributePtr =
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newAttribute,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, newAttributePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromPtr(retValuePtr);
  }

  XmlAttribute? removeAttributeNode(XmlAttribute? attributeNode) {
    final retValuePtr = calloc<COMObject>();
    final attributeNodePtr =
        attributeNode == null ? nullptr : attributeNode.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer attributeNode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer attributeNode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, attributeNodePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromPtr(retValuePtr);
  }

  XmlNodeList getElementsByTagName(String tagName) {
    final retValuePtr = calloc<COMObject>();
    final tagNameHString = tagName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tagName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tagName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, tagNameHString, retValuePtr);

    WindowsDeleteString(tagNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return XmlNodeList.fromPtr(retValuePtr);
  }

  void setAttributeNS(
      Object? namespaceUri, String qualifiedName, String value) {
    final namespaceUriPtr = namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr;
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
        ptr.ref.lpVtbl, namespaceUriPtr, qualifiedNameHString, valueHString);

    WindowsDeleteString(qualifiedNameHString);
    WindowsDeleteString(valueHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  String getAttributeNS(Object? namespaceUri, String localName) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final namespaceUriPtr = namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr;
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
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                      int localName, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, namespaceUriPtr, localNameHString, retValuePtr);

      WindowsDeleteString(localNameHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  void removeAttributeNS(Object? namespaceUri, String localName) {
    final namespaceUriPtr = namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr;
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
                    int localName)>()(
        ptr.ref.lpVtbl, namespaceUriPtr, localNameHString);

    WindowsDeleteString(localNameHString);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  XmlAttribute? setAttributeNodeNS(XmlAttribute? newAttribute) {
    final retValuePtr = calloc<COMObject>();
    final newAttributePtr =
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newAttribute,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer newAttribute,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, newAttributePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromPtr(retValuePtr);
  }

  XmlAttribute? getAttributeNodeNS(Object? namespaceUri, String localName) {
    final retValuePtr = calloc<COMObject>();
    final namespaceUriPtr = namespaceUri?.intoBox().ptr.ref.lpVtbl ?? nullptr;
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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int localName, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, namespaceUriPtr, localNameHString, retValuePtr);

    WindowsDeleteString(localNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromPtr(retValuePtr);
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
