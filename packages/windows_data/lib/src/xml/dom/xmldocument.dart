// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'ixmldocument.dart';
import 'ixmldocumentio.dart';
import 'ixmldocumentio2.dart';
import 'ixmldocumentstatics.dart';
import 'ixmlnode.dart';
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmlattribute.dart';
import 'xmlcdatasection.dart';
import 'xmlcomment.dart';
import 'xmldocumentfragment.dart';
import 'xmldocumenttype.dart';
import 'xmldomimplementation.dart';
import 'xmlelement.dart';
import 'xmlentityreference.dart';
import 'xmlloadsettings.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';
import 'xmlprocessinginstruction.dart';
import 'xmltext.dart';

/// Represents the top level of the XML source. This class includes members
/// for retrieving and creating all other XML objects.
///
/// {@category class}
class XmlDocument extends IInspectable
    implements
        IXmlDocument,
        IXmlNode,
        IXmlNodeSerializer,
        IXmlNodeSelector,
        IXmlDocumentIO,
        IXmlDocumentIO2 {
  XmlDocument() : super(activateClass(_className));
  XmlDocument.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Xml.Dom.XmlDocument';

  static Future<XmlDocument?> loadFromUriAsync(Uri? uri) =>
      createActivationFactory(
              IXmlDocumentStatics.fromPtr, _className, IID_IXmlDocumentStatics)
          .loadFromUriAsync(uri);

  static Future<XmlDocument?> loadFromUriWithSettingsAsync(
          Uri? uri, XmlLoadSettings? loadSettings) =>
      createActivationFactory(
              IXmlDocumentStatics.fromPtr, _className, IID_IXmlDocumentStatics)
          .loadFromUriWithSettingsAsync(uri, loadSettings);

  static Future<XmlDocument?> loadFromFileAsync(IStorageFile? file) =>
      createActivationFactory(
              IXmlDocumentStatics.fromPtr, _className, IID_IXmlDocumentStatics)
          .loadFromFileAsync(file);

  static Future<XmlDocument?> loadFromFileWithSettingsAsync(
          IStorageFile? file, XmlLoadSettings? loadSettings) =>
      createActivationFactory(
              IXmlDocumentStatics.fromPtr, _className, IID_IXmlDocumentStatics)
          .loadFromFileWithSettingsAsync(file, loadSettings);

  late final _iXmlDocument = IXmlDocument.from(this);

  @override
  XmlDocumentType? get doctype => _iXmlDocument.doctype;

  @override
  XmlDomImplementation? get implementation => _iXmlDocument.implementation;

  @override
  XmlElement? get documentElement => _iXmlDocument.documentElement;

  @override
  XmlElement? createElement(String tagName) =>
      _iXmlDocument.createElement(tagName);

  @override
  XmlDocumentFragment? createDocumentFragment() =>
      _iXmlDocument.createDocumentFragment();

  @override
  XmlText? createTextNode(String data) => _iXmlDocument.createTextNode(data);

  @override
  XmlComment? createComment(String data) => _iXmlDocument.createComment(data);

  @override
  XmlProcessingInstruction? createProcessingInstruction(
          String target, String data) =>
      _iXmlDocument.createProcessingInstruction(target, data);

  @override
  XmlAttribute? createAttribute(String name) =>
      _iXmlDocument.createAttribute(name);

  @override
  XmlEntityReference? createEntityReference(String name) =>
      _iXmlDocument.createEntityReference(name);

  @override
  XmlNodeList getElementsByTagName(String tagName) =>
      _iXmlDocument.getElementsByTagName(tagName);

  @override
  XmlCDataSection? createCDataSection(String data) =>
      _iXmlDocument.createCDataSection(data);

  @override
  String get documentUri => _iXmlDocument.documentUri;

  @override
  XmlAttribute? createAttributeNS(Object? namespaceUri, String qualifiedName) =>
      _iXmlDocument.createAttributeNS(namespaceUri, qualifiedName);

  @override
  XmlElement? createElementNS(Object? namespaceUri, String qualifiedName) =>
      _iXmlDocument.createElementNS(namespaceUri, qualifiedName);

  @override
  XmlElement? getElementById(String elementId) =>
      _iXmlDocument.getElementById(elementId);

  @override
  IXmlNode? importNode(IXmlNode? node, bool deep) =>
      _iXmlDocument.importNode(node, deep);

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

  late final _iXmlNodeSerializer = IXmlNodeSerializer.from(this);

  @override
  String getXml() => _iXmlNodeSerializer.getXml();

  @override
  String get innerText => _iXmlNodeSerializer.innerText;

  @override
  set innerText(String value) => _iXmlNodeSerializer.innerText = value;

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

  late final _iXmlDocumentIO = IXmlDocumentIO.from(this);

  @override
  void loadXml(String xml) => _iXmlDocumentIO.loadXml(xml);

  @override
  void loadXmlWithSettings(String xml, XmlLoadSettings? loadSettings) =>
      _iXmlDocumentIO.loadXmlWithSettings(xml, loadSettings);

  @override
  Future<void> saveToFileAsync(IStorageFile? file) =>
      _iXmlDocumentIO.saveToFileAsync(file);

  late final _iXmlDocumentIO2 = IXmlDocumentIO2.from(this);

  @override
  void loadXmlFromBuffer(IBuffer? buffer) =>
      _iXmlDocumentIO2.loadXmlFromBuffer(buffer);

  @override
  void loadXmlFromBufferWithSettings(
          IBuffer? buffer, XmlLoadSettings? loadSettings) =>
      _iXmlDocumentIO2.loadXmlFromBufferWithSettings(buffer, loadSettings);
}
