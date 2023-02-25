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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'ixmlnode.dart';
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlCharacterData = '{132e42ab-4e36-4df6-b1c8-0ce62fd88b26}';

/// {@category interface}
class IXmlCharacterData extends IInspectable
    implements IXmlNode, IXmlNodeSelector, IXmlNodeSerializer {
  // vtable begins at 6, is 8 entries long.
  IXmlCharacterData.fromRawPointer(super.ptr);

  factory IXmlCharacterData.from(IInspectable interface) =>
      IXmlCharacterData.fromRawPointer(
          interface.toInterface(IID_IXmlCharacterData));

  String get data {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
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

  set data(String value) {
    final hstr = convertToHString(value);

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr value)>>>()
          .value
          .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, hstr);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hstr);
    }
  }

  int get length {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  String substringData(int offset, int count) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, Uint32 offset, Uint32 count,
                              Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL, int offset, int count, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, offset, count, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  void appendData(String data) {
    final dataHString = convertToHString(data);

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr data)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int data)>()(ptr.ref.lpVtbl, dataHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(dataHString);
  }

  void insertData(int offset, String data) {
    final dataHString = convertToHString(data);

    final hr =
        ptr.ref.vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 offset, IntPtr data)>>>()
                .value
                .asFunction<int Function(LPVTBL, int offset, int data)>()(
            ptr.ref.lpVtbl, offset, dataHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(dataHString);
  }

  void deleteData(int offset, int count) {
    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL, Uint32 offset, Uint32 count)>>>()
                .value
                .asFunction<int Function(LPVTBL, int offset, int count)>()(
            ptr.ref.lpVtbl, offset, count);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void replaceData(int offset, int count, String data) {
    final dataHString = convertToHString(data);

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        LPVTBL, Uint32 offset, Uint32 count, IntPtr data)>>>()
        .value
        .asFunction<
            int Function(LPVTBL, int offset, int count,
                int data)>()(ptr.ref.lpVtbl, offset, count, dataHString);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(dataHString);
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
