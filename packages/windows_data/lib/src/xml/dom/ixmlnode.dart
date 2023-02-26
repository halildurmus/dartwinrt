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
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
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
///
/// {@category interface}
class IXmlNode extends IInspectable
    implements IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 23 entries long.
  IXmlNode.fromRawPointer(super.ptr);

  factory IXmlNode.from(IInspectable interface) =>
      IXmlNode.fromRawPointer(interface.toInterface(IID_IXmlNode));

  Object? get nodeValue {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  set nodeValue(Object? value) {
    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<HRESULT Function(LPVTBL, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, LPVTBL value)>()(
            ptr.ref.lpVtbl, value?.intoBox().ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  NodeType get nodeType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return NodeType.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  String get nodeName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  IXmlNode? get parentNode {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

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

  XmlNodeList? get childNodes {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlNodeList.fromRawPointer(retValuePtr);
  }

  IXmlNode? get firstChild {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

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

  IXmlNode? get lastChild {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

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

  IXmlNode? get previousSibling {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

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

  IXmlNode? get nextSibling {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

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

  XmlNamedNodeMap? get attributes {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(16)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlNamedNodeMap.fromRawPointer(retValuePtr);
  }

  bool hasChildNodes() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  XmlDocument? get ownerDocument {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(18)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlDocument.fromRawPointer(retValuePtr);
  }

  IXmlNode? insertBefore(IXmlNode? newChild, IXmlNode? referenceChild) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL newChild,
                            LPVTBL referenceChild, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL newChild, LPVTBL referenceChild,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        newChild == null ? nullptr : newChild.ptr.ref.lpVtbl,
        referenceChild == null ? nullptr : referenceChild.ptr.ref.lpVtbl,
        retValuePtr);

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

  IXmlNode? replaceChild(IXmlNode? newChild, IXmlNode? referenceChild) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(20)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL newChild,
                            LPVTBL referenceChild, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL newChild, LPVTBL referenceChild,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        newChild == null ? nullptr : newChild.ptr.ref.lpVtbl,
        referenceChild == null ? nullptr : referenceChild.ptr.ref.lpVtbl,
        retValuePtr);

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

  IXmlNode? removeChild(IXmlNode? childNode) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(21)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL childNode, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL childNode, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        childNode == null ? nullptr : childNode.ptr.ref.lpVtbl,
        retValuePtr);

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

  IXmlNode? appendChild(IXmlNode? newChild) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(22)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL newChild, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL newChild, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        newChild == null ? nullptr : newChild.ptr.ref.lpVtbl,
        retValuePtr);

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

  IXmlNode? cloneNode(bool deep) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(23)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL, Bool deep, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, bool deep,
                Pointer<COMObject>)>()(ptr.ref.lpVtbl, deep, retValuePtr);

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

  Object? get namespaceUri {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(24)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  Object? get localName {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  Object? get prefix {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(26)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromRawPointer(retValuePtr).value;
  }

  void normalize() {
    final hr = ptr.ref.vtable
        .elementAt(27)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL)>>>()
        .value
        .asFunction<int Function(LPVTBL)>()(ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set prefix(Object? value) {
    final hr =
        ptr.ref.vtable
                .elementAt(28)
                .cast<
                    Pointer<
                        NativeFunction<HRESULT Function(LPVTBL, LPVTBL value)>>>()
                .value
                .asFunction<int Function(LPVTBL, LPVTBL value)>()(
            ptr.ref.lpVtbl, value?.intoBox().ref.lpVtbl ?? nullptr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

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
