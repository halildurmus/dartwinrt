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

import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlNode = '{1c741d59-2122-47d5-a856-83f3d4214875}';

/// Contains information for the entire Document Object Model. This
/// interface represents a single node in the document tree. While all
/// objects that implement this interface expose methods for dealing with
/// children, not all objects that implement this interface may have
/// children.
class IXmlNode extends IInspectable
    implements IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 23 entries long.
  IXmlNode.fromPtr(super.ptr);

  factory IXmlNode.from(IInspectable interface) =>
      IXmlNode.fromPtr(interface.toInterface(IID_IXmlNode));

  Object? get nodeValue {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  NodeType get nodeType {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NodeType.from(value.value);
    } finally {
      free(value);
    }
  }

  String get nodeName {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
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

  IXmlNode? get parentNode {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

  XmlNodeList get childNodes {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(value);
  }

  IXmlNode? get firstChild {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

  XmlNamedNodeMap get attributes {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return XmlNamedNodeMap.fromPtr(value);
  }

  bool hasChildNodes() {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(17)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Bool> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Bool> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  XmlDocument? get ownerDocument {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newChild,
                            VTablePointer referenceChild,
                            Pointer<COMObject> insertedChild)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer newChild,
                    VTablePointer referenceChild,
                    Pointer<COMObject> insertedChild)>()(
        ptr.ref.lpVtbl,
        newChild?.ptr.ref.lpVtbl ?? nullptr,
        referenceChild?.ptr.ref.lpVtbl ?? nullptr,
        insertedChild);

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

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newChild,
                            VTablePointer referenceChild,
                            Pointer<COMObject> previousChild)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer newChild,
                    VTablePointer referenceChild,
                    Pointer<COMObject> previousChild)>()(
        ptr.ref.lpVtbl,
        newChild?.ptr.ref.lpVtbl ?? nullptr,
        referenceChild?.ptr.ref.lpVtbl ?? nullptr,
        previousChild);

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

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer childNode,
                            Pointer<COMObject> removedChild)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer childNode,
                    Pointer<COMObject> removedChild)>()(
        ptr.ref.lpVtbl, childNode?.ptr.ref.lpVtbl ?? nullptr, removedChild);

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

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer newChild,
                            Pointer<COMObject> appendedChild)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer newChild,
                    Pointer<COMObject> appendedChild)>()(
        ptr.ref.lpVtbl, newChild?.ptr.ref.lpVtbl ?? nullptr, appendedChild);

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

    final hr = ptr.ref.vtable
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Bool deep,
                        Pointer<COMObject> newNode)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl, bool deep,
                Pointer<COMObject> newNode)>()(ptr.ref.lpVtbl, deep, newNode);

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

    final hr = ptr.ref.vtable
            .elementAt(24)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(25)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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

    final hr = ptr.ref.vtable
            .elementAt(26)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

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
    final hr = ptr.ref.vtable
        .elementAt(27)
        .cast<Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>>()
        .value
        .asFunction<int Function(VTablePointer lpVtbl)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  set prefix(Object? value) {
    final hr = ptr.ref.vtable
            .elementAt(28)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        ptr.ref.lpVtbl, value?.intoBox().ptr.ref.lpVtbl ?? nullptr);

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
