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
import 'xmlcdatasection.dart';
import 'xmlcomment.dart';
import 'xmldocument.dart';
import 'xmldocumentfragment.dart';
import 'xmldocumenttype.dart';
import 'xmldomimplementation.dart';
import 'xmlelement.dart';
import 'xmlentityreference.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';
import 'xmlprocessinginstruction.dart';
import 'xmltext.dart';

/// @nodoc
const IID_IXmlDocument = '{f7f3a506-1e87-42d6-bcfb-b8c809fa5494}';

/// {@category interface}
class IXmlDocument extends IInspectable
    implements IXmlNode, IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 17 entries long.
  IXmlDocument.fromRawPointer(super.ptr);

  factory IXmlDocument.from(IInspectable interface) =>
      IXmlDocument.fromRawPointer(interface.toInterface(IID_IXmlDocument));

  XmlDocumentType? get doctype {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlDocumentType.fromRawPointer(retValuePtr);
  }

  XmlDomImplementation? get implementation {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlDomImplementation.fromRawPointer(retValuePtr);
  }

  XmlElement? get documentElement {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlElement.fromRawPointer(retValuePtr);
  }

  XmlElement? createElement(String tagName) {
    final retValuePtr = calloc<COMObject>();
    final tagNameHString = convertToHString(tagName);

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    return XmlElement.fromRawPointer(retValuePtr);
  }

  XmlDocumentFragment? createDocumentFragment() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlDocumentFragment.fromRawPointer(retValuePtr);
  }

  XmlText? createTextNode(String data) {
    final retValuePtr = calloc<COMObject>();
    final dataHString = convertToHString(data);

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int data, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, dataHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(dataHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlText.fromRawPointer(retValuePtr);
  }

  XmlComment? createComment(String data) {
    final retValuePtr = calloc<COMObject>();
    final dataHString = convertToHString(data);

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int data, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, dataHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(dataHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlComment.fromRawPointer(retValuePtr);
  }

  XmlProcessingInstruction? createProcessingInstruction(
      String target, String data) {
    final retValuePtr = calloc<COMObject>();
    final targetHString = convertToHString(target);
    final dataHString = convertToHString(data);

    final hr =
        ptr.ref.vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(LPVTBL lpVtbl, IntPtr target,
                                IntPtr data, Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int target, int data,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, targetHString, dataHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(targetHString);
    WindowsDeleteString(dataHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlProcessingInstruction.fromRawPointer(retValuePtr);
  }

  XmlAttribute? createAttribute(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlEntityReference? createEntityReference(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = convertToHString(name);

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int name, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(nameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlEntityReference.fromRawPointer(retValuePtr);
  }

  XmlNodeList? getElementsByTagName(String tagName) {
    final retValuePtr = calloc<COMObject>();
    final tagNameHString = convertToHString(tagName);

    final hr = ptr.ref.vtable
            .elementAt(16)
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

  XmlCDataSection? createCDataSection(String data) {
    final retValuePtr = calloc<COMObject>();
    final dataHString = convertToHString(data);

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl, int data, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, dataHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(dataHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlCDataSection.fromRawPointer(retValuePtr);
  }

  String get documentUri {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(18)
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

  XmlAttribute? createAttributeNS(Object? namespaceUri, String qualifiedName) {
    final retValuePtr = calloc<COMObject>();
    final namespaceUriPtr = namespaceUri?.intoBox().ref.lpVtbl ?? nullptr;
    final qualifiedNameHString = convertToHString(qualifiedName);

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL namespaceUri,
                            IntPtr qualifiedName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                    int qualifiedName, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, namespaceUriPtr, qualifiedNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(qualifiedNameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlAttribute.fromRawPointer(retValuePtr);
  }

  XmlElement? createElementNS(Object? namespaceUri, String qualifiedName) {
    final retValuePtr = calloc<COMObject>();
    final namespaceUriPtr = namespaceUri?.intoBox().ref.lpVtbl ?? nullptr;
    final qualifiedNameHString = convertToHString(qualifiedName);

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL namespaceUri,
                            IntPtr qualifiedName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL namespaceUri,
                    int qualifiedName, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, namespaceUriPtr, qualifiedNameHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(qualifiedNameHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlElement.fromRawPointer(retValuePtr);
  }

  XmlElement? getElementById(String elementId) {
    final retValuePtr = calloc<COMObject>();
    final elementIdHString = convertToHString(elementId);

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr elementId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int elementId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, elementIdHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(elementIdHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlElement.fromRawPointer(retValuePtr);
  }

  IXmlNode? importNode(IXmlNode? node, bool deep) {
    final retValuePtr = calloc<COMObject>();
    final nodePtr = node == null ? nullptr : node.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL node, Bool deep,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL node, bool deep,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nodePtr, deep, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
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
