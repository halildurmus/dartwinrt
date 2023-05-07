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
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlNodeSelector = '{63dbba8b-d0db-4fe1-b745-f9433afdc25b}';

/// {@category interface}
class IXmlNodeSelector extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IXmlNodeSelector.fromPtr(super.ptr);

  factory IXmlNodeSelector.from(IInspectable interface) =>
      IXmlNodeSelector.fromPtr(interface.toInterface(IID_IXmlNodeSelector));

  IXmlNode? selectSingleNode(String xpath) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = xpath.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xpath,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int xpath,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, retValuePtr);

    WindowsDeleteString(xpathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromPtr(retValuePtr);
  }

  XmlNodeList selectNodes(String xpath) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = xpath.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr xpath,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int xpath,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, retValuePtr);

    WindowsDeleteString(xpathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return XmlNodeList.fromPtr(retValuePtr);
  }

  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = xpath.toHString();
    final namespacesPtr = namespaces?.intoBox().ptr.ref.lpVtbl ?? nullptr;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr xpath,
                            VTablePointer namespaces,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int xpath,
                    VTablePointer namespaces,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, namespacesPtr, retValuePtr);

    WindowsDeleteString(xpathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromPtr(retValuePtr);
  }

  XmlNodeList selectNodesNS(String xpath, Object? namespaces) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = xpath.toHString();
    final namespacesPtr = namespaces?.intoBox().ptr.ref.lpVtbl ?? nullptr;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr xpath,
                            VTablePointer namespaces,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int xpath,
                    VTablePointer namespaces,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, namespacesPtr, retValuePtr);

    WindowsDeleteString(xpathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return XmlNodeList.fromPtr(retValuePtr);
  }
}
