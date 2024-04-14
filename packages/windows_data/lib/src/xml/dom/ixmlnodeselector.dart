// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlNodeSelector = '{63dbba8b-d0db-4fe1-b745-f9433afdc25b}';

class IXmlNodeSelector extends IInspectable {
  IXmlNodeSelector.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IXmlNodeSelectorVtbl>().ref;

  final _IXmlNodeSelectorVtbl _vtable;

  factory IXmlNodeSelector.from(IInspectable interface) =>
      interface.cast(IXmlNodeSelector.fromPtr, IID_IXmlNodeSelector);

  IXmlNode? selectSingleNode(String xpath) {
    final node = calloc<COMObject>();

    final hr = _vtable.SelectSingleNode.asFunction<
        int Function(VTablePointer lpVtbl, int xpath,
            Pointer<COMObject> node)>()(lpVtbl, xpath.toHString(), node);

    if (FAILED(hr)) {
      free(node);
      throwWindowsException(hr);
    }

    if (node.isNull) {
      free(node);
      return null;
    }

    return IXmlNode.fromPtr(node);
  }

  XmlNodeList selectNodes(String xpath) {
    final nodelist = calloc<COMObject>();

    final hr = _vtable.SelectNodes.asFunction<
            int Function(VTablePointer lpVtbl, int xpath,
                Pointer<COMObject> nodelist)>()(
        lpVtbl, xpath.toHString(), nodelist);

    if (FAILED(hr)) {
      free(nodelist);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(nodelist);
  }

  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) {
    final node = calloc<COMObject>();

    final hr = _vtable.SelectSingleNodeNS.asFunction<
            int Function(VTablePointer lpVtbl, int xpath,
                VTablePointer namespaces, Pointer<COMObject> node)>()(lpVtbl,
        xpath.toHString(), namespaces?.boxValue().lpVtbl ?? nullptr, node);

    if (FAILED(hr)) {
      free(node);
      throwWindowsException(hr);
    }

    if (node.isNull) {
      free(node);
      return null;
    }

    return IXmlNode.fromPtr(node);
  }

  XmlNodeList selectNodesNS(String xpath, Object? namespaces) {
    final nodelist = calloc<COMObject>();

    final hr = _vtable.SelectNodesNS.asFunction<
            int Function(VTablePointer lpVtbl, int xpath,
                VTablePointer namespaces, Pointer<COMObject> nodelist)>()(
        lpVtbl,
        xpath.toHString(),
        namespaces?.boxValue().lpVtbl ?? nullptr,
        nodelist);

    if (FAILED(hr)) {
      free(nodelist);
      throwWindowsException(hr);
    }

    return XmlNodeList.fromPtr(nodelist);
  }
}

final class _IXmlNodeSelectorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr xpath, Pointer<COMObject> node)>>
      SelectSingleNode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr xpath,
              Pointer<COMObject> nodelist)>> SelectNodes;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr xpath,
              VTablePointer namespaces,
              Pointer<COMObject> node)>> SelectSingleNodeNS;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr xpath,
              VTablePointer namespaces,
              Pointer<COMObject> nodelist)>> SelectNodesNS;
}
