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

import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlNode = '{1c741d59-2122-47d5-a856-83f3d4214875}';

/// Contains information for the entire Document Object Model. This interface
/// represents a single node in the document tree. While all objects that
/// implement this interface expose methods for dealing with children, not all
/// objects that implement this interface may have children.
class IXmlNode extends IInspectable
    implements IXmlNodeSelector, IXmlNodeSerializer {
  IXmlNode.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlNodeVtbl>().ref;

  final _IXmlNodeVtbl _vtable;

  factory IXmlNode.from(IInspectable interface) =>
      interface.cast(IXmlNode.fromPtr, IID_IXmlNode);

  Object? get nodeValue {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NodeValue.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertyValue.fromPtr(value).value;
  }

  set nodeValue(Object? value) {
    final hr = _vtable.put_NodeValue.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  NodeType get nodeType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NodeType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NodeType.from(value.value);
    } finally {
      free(value);
    }
  }

  String get nodeName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_NodeName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  IXmlNode? get parentNode {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ParentNode.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IXmlNode.fromPtr(value);
  }

  XmlNodeList? get childNodes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ChildNodes.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlNodeList.fromPtr(value);
  }

  IXmlNode? get firstChild {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FirstChild.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IXmlNode.fromPtr(value);
  }

  IXmlNode? get lastChild {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LastChild.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IXmlNode.fromPtr(value);
  }

  IXmlNode? get previousSibling {
    final value = calloc<COMObject>();

    final hr = _vtable.get_PreviousSibling.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IXmlNode.fromPtr(value);
  }

  IXmlNode? get nextSibling {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NextSibling.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IXmlNode.fromPtr(value);
  }

  XmlNamedNodeMap? get attributes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Attributes.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlNamedNodeMap.fromPtr(value);
  }

  bool hasChildNodes() {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.HasChildNodes.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  XmlDocument? get ownerDocument {
    final value = calloc<COMObject>();

    final hr = _vtable.get_OwnerDocument.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return XmlDocument.fromPtr(value);
  }

  IXmlNode? insertBefore(IXmlNode? newChild, IXmlNode? referenceChild) {
    final insertedChild = calloc<COMObject>();

    final hr = _vtable.InsertBefore.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer newChild,
                VTablePointer referenceChild,
                Pointer<COMObject> insertedChild)>()(
        lpVtbl, newChild.lpVtbl, referenceChild.lpVtbl, insertedChild);

    if (FAILED(hr)) {
      free(insertedChild);
      throwWindowsException(hr);
    }

    if (insertedChild.isNull) {
      free(insertedChild);
      return null;
    }

    return IXmlNode.fromPtr(insertedChild);
  }

  IXmlNode? replaceChild(IXmlNode? newChild, IXmlNode? referenceChild) {
    final previousChild = calloc<COMObject>();

    final hr = _vtable.ReplaceChild.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer newChild,
                VTablePointer referenceChild,
                Pointer<COMObject> previousChild)>()(
        lpVtbl, newChild.lpVtbl, referenceChild.lpVtbl, previousChild);

    if (FAILED(hr)) {
      free(previousChild);
      throwWindowsException(hr);
    }

    if (previousChild.isNull) {
      free(previousChild);
      return null;
    }

    return IXmlNode.fromPtr(previousChild);
  }

  IXmlNode? removeChild(IXmlNode? childNode) {
    final removedChild = calloc<COMObject>();

    final hr = _vtable.RemoveChild.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer childNode,
                Pointer<COMObject> removedChild)>()(
        lpVtbl, childNode.lpVtbl, removedChild);

    if (FAILED(hr)) {
      free(removedChild);
      throwWindowsException(hr);
    }

    if (removedChild.isNull) {
      free(removedChild);
      return null;
    }

    return IXmlNode.fromPtr(removedChild);
  }

  IXmlNode? appendChild(IXmlNode? newChild) {
    final appendedChild = calloc<COMObject>();

    final hr = _vtable.AppendChild.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer newChild,
                Pointer<COMObject> appendedChild)>()(
        lpVtbl, newChild.lpVtbl, appendedChild);

    if (FAILED(hr)) {
      free(appendedChild);
      throwWindowsException(hr);
    }

    if (appendedChild.isNull) {
      free(appendedChild);
      return null;
    }

    return IXmlNode.fromPtr(appendedChild);
  }

  IXmlNode? cloneNode(bool deep) {
    final newNode = calloc<COMObject>();

    final hr = _vtable.CloneNode.asFunction<
        int Function(VTablePointer lpVtbl, bool deep,
            Pointer<COMObject> newNode)>()(lpVtbl, deep, newNode);

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

  Object? get namespaceUri {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NamespaceUri.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertyValue.fromPtr(value).value;
  }

  Object? get localName {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LocalName.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertyValue.fromPtr(value).value;
  }

  Object? get prefix {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Prefix.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertyValue.fromPtr(value).value;
  }

  void normalize() {
    final hr =
        _vtable.Normalize.asFunction<int Function(VTablePointer lpVtbl)>()(
            lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  set prefix(Object? value) {
    final hr = _vtable.put_Prefix.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

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

final class _IXmlNodeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NodeValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_NodeValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NodeType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_NodeName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ParentNode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ChildNodes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FirstChild;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LastChild;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_PreviousSibling;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NextSibling;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Attributes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      HasChildNodes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_OwnerDocument;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer newChild,
              VTablePointer referenceChild,
              Pointer<COMObject> insertedChild)>> InsertBefore;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer newChild,
              VTablePointer referenceChild,
              Pointer<COMObject> previousChild)>> ReplaceChild;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer childNode,
              Pointer<COMObject> removedChild)>> RemoveChild;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer newChild,
              Pointer<COMObject> appendedChild)>> AppendChild;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Bool deep, Pointer<COMObject> newNode)>>
      CloneNode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NamespaceUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LocalName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Prefix;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      Normalize;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Prefix;
}
