// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

import 'internal/extensions/iunknown_helpers.dart';

/// @nodoc
const IID_IUnknown = '{00000000-0000-0000-c000-000000000046}';

/// Enables clients to get pointers to other interfaces on a given object
/// through the QueryInterface method, and manage the existence of the
/// object through the AddRef and Release methods. All other COM interfaces
/// are inherited, directly or indirectly, from IUnknown. Therefore, the
/// three methods in IUnknown are the first entries in the vtable for every
/// interface.
///
/// {@category interface}
class IUnknown {
  IUnknown(this.ptr) {
    if (!ptr.ref.isNull) {
      _finalizer.attach(this, ptr, detach: this);
    }
  }

  Pointer<COMObject> ptr;

  static final _finalizer = Finalizer<Pointer<COMObject>>((ptr) {
    _release(ptr);
    free(ptr);
  });

  static int _release(Pointer<COMObject> ptr) => ptr.ref.vtable
      .elementAt(2)
      .cast<Pointer<NativeFunction<Uint32 Function(LPVTBL lpVtbl)>>>()
      .value
      .asFunction<int Function(LPVTBL lpVtbl)>()(ptr.ref.lpVtbl);

  factory IUnknown.from(IUnknown interface) =>
      IUnknown(interface.toInterface(IID_IUnknown));

  /// Detaches this object from the `Finalizer`.
  ///
  /// Call this method only if you want to manually manage the lifetime of the
  /// object.
  void detach() => _finalizer.detach(this);

  /// Casts this COM object to an interface specified in [iid].
  ///
  /// [creator] must be the constructor of the class to be casted to (e.g.
  /// `ICalendar.fromPtr`).
  ///
  /// Throws a [WindowsException] if the cast fails.
  T cast<T extends IUnknown>(
          T Function(Pointer<COMObject>) creator, String iid) =>
      creator(toInterface(iid));

  /// Tries to cast this COM object to an interface specified in [iid].
  ///
  /// [creator] must be the constructor of the class to be casted to (e.g.
  /// `ICalendar.fromPtr`).
  ///
  /// Returns `null` if the cast fails.
  T? tryCast<T extends IUnknown>(
      T Function(Pointer<COMObject>) creator, String iid) {
    try {
      return cast(creator, iid);
    } on WindowsException {
      return null;
    }
  }
}
