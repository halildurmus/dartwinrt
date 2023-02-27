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

import 'ixmlnode.dart';
import 'xmlnodelist.dart';

/// @nodoc
const IID_IXmlNodeSelector = '{63dbba8b-d0db-4fe1-b745-f9433afdc25b}';

/// {@category interface}
class IXmlNodeSelector extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IXmlNodeSelector.fromRawPointer(super.ptr);

  factory IXmlNodeSelector.from(IInspectable interface) =>
      IXmlNodeSelector.fromRawPointer(
          interface.toInterface(IID_IXmlNodeSelector));

  IXmlNode? selectSingleNode(String xpath) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = convertToHString(xpath);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr xpath,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int xpath,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(xpathHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  XmlNodeList? selectNodes(String xpath) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = convertToHString(xpath);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr xpath,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int xpath,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, xpathHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(xpathHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlNodeList.fromRawPointer(retValuePtr);
  }

  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = convertToHString(xpath);

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                IntPtr xpath,
                                LPVTBL namespaces,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int xpath, LPVTBL namespaces,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl,
            xpathHString,
            namespaces?.intoBox().ref.lpVtbl ?? nullptr,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(xpathHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IXmlNode.fromRawPointer(retValuePtr);
  }

  XmlNodeList? selectNodesNS(String xpath, Object? namespaces) {
    final retValuePtr = calloc<COMObject>();
    final xpathHString = convertToHString(xpath);

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                IntPtr xpath,
                                LPVTBL namespaces,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int xpath, LPVTBL namespaces,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl,
            xpathHString,
            namespaces?.intoBox().ref.lpVtbl ?? nullptr,
            retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(xpathHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return XmlNodeList.fromRawPointer(retValuePtr);
  }
}
