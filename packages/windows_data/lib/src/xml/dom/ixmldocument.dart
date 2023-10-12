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

class IXmlDocument extends IInspectable
    implements IXmlNode, IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 17 entries long.
  IXmlDocument.fromPtr(super.ptr);

  factory IXmlDocument.from(IInspectable interface) =>
      interface.cast(IXmlDocument.fromPtr, IID_IXmlDocument);

  XmlDocumentType? get doctype {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlDocumentType.fromPtr(value);
  }

  XmlDomImplementation? get implementation {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlDomImplementation.fromPtr(value);
  }

  XmlElement? get documentElement {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlElement.fromPtr(value);
  }

  XmlElement? createElement(String tagName) {
    final newElement = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tagName,
                            Pointer<COMObject> newElement)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tagName,
                    Pointer<COMObject> newElement)>()(
        lpVtbl, tagName.toHString(), newElement);

    if (FAILED(hr)) {
      free(newElement);
      throwWindowsException(hr);
    }

    if (newElement.isNull) {
      free(newElement);
      return null;
    }

    return XmlElement.fromPtr(newElement);
  }

  XmlDocumentFragment? createDocumentFragment() {
    final newDocumentFragment = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            Pointer<COMObject> newDocumentFragment)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl,
                    Pointer<COMObject> newDocumentFragment)>()(
        lpVtbl, newDocumentFragment);

    if (FAILED(hr)) {
      free(newDocumentFragment);
      throwWindowsException(hr);
    }

    if (newDocumentFragment.isNull) {
      free(newDocumentFragment);
      return null;
    }

    return XmlDocumentFragment.fromPtr(newDocumentFragment);
  }

  XmlText? createTextNode(String data) {
    final newTextNode = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr data,
                            Pointer<COMObject> newTextNode)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int data,
                    Pointer<COMObject> newTextNode)>()(
        lpVtbl, data.toHString(), newTextNode);

    if (FAILED(hr)) {
      free(newTextNode);
      throwWindowsException(hr);
    }

    if (newTextNode.isNull) {
      free(newTextNode);
      return null;
    }

    return XmlText.fromPtr(newTextNode);
  }

  XmlComment? createComment(String data) {
    final newComment = calloc<COMObject>();

    final hr = vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr data,
                            Pointer<COMObject> newComment)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int data,
                    Pointer<COMObject> newComment)>()(
        lpVtbl, data.toHString(), newComment);

    if (FAILED(hr)) {
      free(newComment);
      throwWindowsException(hr);
    }

    if (newComment.isNull) {
      free(newComment);
      return null;
    }

    return XmlComment.fromPtr(newComment);
  }

  XmlProcessingInstruction? createProcessingInstruction(
      String target, String data) {
    final newProcessingInstruction = calloc<COMObject>();

    final hr = vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr target,
                            IntPtr data,
                            Pointer<COMObject> newProcessingInstruction)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int target, int data,
                    Pointer<COMObject> newProcessingInstruction)>()(
        lpVtbl, target.toHString(), data.toHString(), newProcessingInstruction);

    if (FAILED(hr)) {
      free(newProcessingInstruction);
      throwWindowsException(hr);
    }

    if (newProcessingInstruction.isNull) {
      free(newProcessingInstruction);
      return null;
    }

    return XmlProcessingInstruction.fromPtr(newProcessingInstruction);
  }

  XmlAttribute? createAttribute(String name) {
    final newAttribute = calloc<COMObject>();

    final hr = vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> newAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> newAttribute)>()(
        lpVtbl, name.toHString(), newAttribute);

    if (FAILED(hr)) {
      free(newAttribute);
      throwWindowsException(hr);
    }

    if (newAttribute.isNull) {
      free(newAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(newAttribute);
  }

  XmlEntityReference? createEntityReference(String name) {
    final newEntityReference = calloc<COMObject>();

    final hr = vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> newEntityReference)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> newEntityReference)>()(
        lpVtbl, name.toHString(), newEntityReference);

    if (FAILED(hr)) {
      free(newEntityReference);
      throwWindowsException(hr);
    }

    if (newEntityReference.isNull) {
      free(newEntityReference);
      return null;
    }

    return XmlEntityReference.fromPtr(newEntityReference);
  }

  XmlNodeList getElementsByTagName(String tagName) {
    final elements = calloc<COMObject>();

    final hr = vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr tagName,
                            Pointer<COMObject> elements)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int tagName,
                    Pointer<COMObject> elements)>()(
        lpVtbl, tagName.toHString(), elements);

    if (FAILED(hr)) {
      free(elements);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(elements);
  }

  XmlCDataSection? createCDataSection(String data) {
    final newCDataSection = calloc<COMObject>();

    final hr = vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr data,
                            Pointer<COMObject> newCDataSection)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int data,
                    Pointer<COMObject> newCDataSection)>()(
        lpVtbl, data.toHString(), newCDataSection);

    if (FAILED(hr)) {
      free(newCDataSection);
      throwWindowsException(hr);
    }

    if (newCDataSection.isNull) {
      free(newCDataSection);
      return null;
    }

    return XmlCDataSection.fromPtr(newCDataSection);
  }

  String get documentUri {
    final value = calloc<IntPtr>();

    try {
      final hr = vtable
              .elementAt(18)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  XmlAttribute? createAttributeNS(Object? namespaceUri, String qualifiedName) {
    final newAttribute = calloc<COMObject>();

    final hr = vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer namespaceUri,
                            IntPtr qualifiedName,
                            Pointer<COMObject> newAttribute)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int qualifiedName, Pointer<COMObject> newAttribute)>()(
        lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr,
        qualifiedName.toHString(),
        newAttribute);

    if (FAILED(hr)) {
      free(newAttribute);
      throwWindowsException(hr);
    }

    if (newAttribute.isNull) {
      free(newAttribute);
      return null;
    }

    return XmlAttribute.fromPtr(newAttribute);
  }

  XmlElement? createElementNS(Object? namespaceUri, String qualifiedName) {
    final newElement = calloc<COMObject>();

    final hr = vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer namespaceUri,
                            IntPtr qualifiedName,
                            Pointer<COMObject> newElement)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer namespaceUri,
                    int qualifiedName, Pointer<COMObject> newElement)>()(
        lpVtbl,
        namespaceUri?.boxValue().lpVtbl ?? nullptr,
        qualifiedName.toHString(),
        newElement);

    if (FAILED(hr)) {
      free(newElement);
      throwWindowsException(hr);
    }

    if (newElement.isNull) {
      free(newElement);
      return null;
    }

    return XmlElement.fromPtr(newElement);
  }

  XmlElement? getElementById(String elementId) {
    final element = calloc<COMObject>();

    final hr = vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr elementId,
                            Pointer<COMObject> element)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int elementId,
                    Pointer<COMObject> element)>()(
        lpVtbl, elementId.toHString(), element);

    if (FAILED(hr)) {
      free(element);
      throwWindowsException(hr);
    }

    if (element.isNull) {
      free(element);
      return null;
    }

    return XmlElement.fromPtr(element);
  }

  IXmlNode? importNode(IXmlNode? node, bool deep) {
    final newNode = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(22)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer node,
                                Bool deep,
                                Pointer<COMObject> newNode)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer node,
                        bool deep, Pointer<COMObject> newNode)>()(
            lpVtbl, node.lpVtbl, deep, newNode);

    if (FAILED(hr)) {
      free(newNode);
      throwWindowsException(hr);
    }

    if (newNode.isNull) {
      free(newNode);
      return null;
    }

    return IXmlNode.fromPtr(newNode);
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
