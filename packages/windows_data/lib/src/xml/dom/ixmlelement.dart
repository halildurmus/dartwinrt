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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'ixmlnode.dart';
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
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
  IXmlElement.fromRawPointer(super.ptr);

  factory IXmlElement.from(IInspectable interface) =>
      IXmlElement.fromRawPointer(interface.toInterface(IID_IXmlElement));

  String get tagName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String getAttribute(String attributeName) {
    final retValuePtr = calloc<HSTRING>();
    final attributeNameHString = convertToHString(attributeName);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr attributeName,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int attributeName,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, attributeNameHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(attributeNameHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  void setAttribute(String attributeName, String attributeValue) {
    final attributeNameHString = convertToHString(attributeName);
    final attributeValueHString = convertToHString(attributeValue);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr attributeName,
                            IntPtr attributeValue)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int attributeName, int attributeValue)>()(
        ptr.ref.lpVtbl, attributeNameHString, attributeValueHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(attributeNameHString);
    WindowsDeleteString(attributeValueHString);
  }

  void removeAttribute(String attributeName) {
    final attributeNameHString = convertToHString(attributeName);

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl, IntPtr attributeName)>>>()
                .value
                .asFunction<int Function(LPVTBL lpVtbl, int attributeName)>()(
            ptr.ref.lpVtbl, attributeNameHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(attributeNameHString);
  }

  XmlAttribute? getAttributeNode(String attributeName) {
    final retValuePtr = calloc<COMObject>();
    final attributeNameHString = convertToHString(attributeName);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr attributeName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int attributeName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, attributeNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(attributeNameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlAttribute? setAttributeNode(XmlAttribute? newAttribute) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL newAttribute,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL newAttribute,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlAttribute? removeAttributeNode(XmlAttribute? attributeNode) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL attributeNode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL attributeNode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        attributeNode == null ? nullptr : attributeNode.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlNodeList? getElementsByTagName(String tagName) {
    final retValuePtr = calloc<COMObject>();
    final tagNameHString = convertToHString(tagName);

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr tagName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int tagName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, tagNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(tagNameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlNodeList.fromRawPointer(retValuePtr);
  }

  void setAttributeNS(
      Object? namespaceUri, String qualifiedName, String value) {
    final qualifiedNameHString = convertToHString(qualifiedName);
    final valueHString = convertToHString(value);

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                            IntPtr qualifiedName, IntPtr value)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                    int qualifiedName, int value)>()(
        ptr.ref.lpVtbl,
        namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
        qualifiedNameHString,
        valueHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(qualifiedNameHString);
    WindowsDeleteString(valueHString);
  }

  String getAttributeNS(Object? namespaceUri, String localName) {
    final retValuePtr = calloc<HSTRING>();

    final localNameHString = convertToHString(localName);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(15)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  LPVTBL namespaceUri,
                                  IntPtr localName,
                                  Pointer<IntPtr> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                          int localName, Pointer<IntPtr> retValuePtr)>()(
              ptr.ref.lpVtbl,
              namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
              localNameHString,
              retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(localNameHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  void removeAttributeNS(Object? namespaceUri, String localName) {
    final localNameHString = convertToHString(localName);

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                            IntPtr localName)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, LPVTBL namespaceUri, int localName)>()(
        ptr.ref.lpVtbl,
        namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
        localNameHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(localNameHString);
  }

  XmlAttribute? setAttributeNodeNS(XmlAttribute? newAttribute) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL newAttribute,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL newAttribute,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        newAttribute == null ? nullptr : newAttribute.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlAttribute? getAttributeNodeNS(Object? namespaceUri, String localName) {
    final retValuePtr = calloc<COMObject>();

    final localNameHString = convertToHString(localName);

    final hr =
        ptr.ref.vtable
                .elementAt(18)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL namespaceUri,
                                IntPtr localName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                        int localName, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl,
            namespaceUri?.intoBox().ref.lpVtbl ?? nullptr,
            localNameHString,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(localNameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  // IXmlNode methods
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

  // IXmlNodeSelector methods
  late final _iXmlNodeSelector = IXmlNodeSelector.from(this);

  @override
  IXmlNode? selectSingleNode(String xpath) =>
      _iXmlNodeSelector.selectSingleNode(xpath);

  @override
  XmlNodeList? selectNodes(String xpath) =>
      _iXmlNodeSelector.selectNodes(xpath);

  @override
  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectSingleNodeNS(xpath, namespaces);

  @override
  XmlNodeList? selectNodesNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectNodesNS(xpath, namespaces);

  // IXmlNodeSerializer methods
  late final _iXmlNodeSerializer = IXmlNodeSerializer.from(this);

  @override
  String getXml() => _iXmlNodeSerializer.getXml();

  @override
  String get innerText => _iXmlNodeSerializer.innerText;

  @override
  set innerText(String value) => _iXmlNodeSerializer.innerText = value;
}
