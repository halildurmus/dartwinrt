// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown;

import '../../iunknown.dart';

extension IUnknownHelpers on IUnknown {
  /// Queries a COM object for a pointer to one of its interface; identifying
  /// the interface by a reference to its interface identifier (IID).
  ///
  /// If the COM object implements the interface, then it returns a pointer to
  /// that interface after calling `addRef` on it.
  int _queryInterface(Pointer<GUID> riid, Pointer<Pointer> ppvObject) => ptr
      .ref.vtable
      .elementAt(0)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(LPVTBL lpVtbl, Pointer<GUID> riid,
                      Pointer<Pointer> ppvObject)>>>()
      .value
      .asFunction<
          int Function(LPVTBL lpVtbl, Pointer<GUID> riid,
              Pointer<Pointer> ppvObject)>()(ptr.ref.lpVtbl, riid, ppvObject);

  /// Increments the reference count for an interface pointer to a COM object.
  int addRef() => ptr.ref.vtable
      .elementAt(1)
      .cast<Pointer<NativeFunction<Uint32 Function(LPVTBL lpVtbl)>>>()
      .value
      .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

  /// Decrements the reference count for an interface on a COM object.
  int release() => ptr.ref.vtable
      .elementAt(2)
      .cast<Pointer<NativeFunction<Uint32 Function(LPVTBL lpVtbl)>>>()
      .value
      .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

  /// Casts this COM object to an interface specified in [iid] and returns a
  /// reference to it.
  ///
  /// Throws a [WindowsException] if the cast fails.
  Pointer<COMObject> toInterface(String iid) {
    final objectPtr = calloc<COMObject>();
    final pIID = convertToIID(iid);

    try {
      final hr = _queryInterface(pIID, objectPtr.cast());

      if (FAILED(hr)) {
        free(objectPtr);
        throw WindowsException(hr);
      }

      return objectPtr;
    } finally {
      free(pIID);
    }
  }
}
