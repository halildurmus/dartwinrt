// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown;

import 'iinspectable.dart';
import 'internal/extensions/extensions.dart';

/// Activates the specified Windows Runtime class in the [className] and returns
/// a reference to the `IInspectable` interface.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
Pointer<COMObject> activateClass(String className,
    {Allocator allocator = calloc}) {
  // Create a HSTRING representing the object
  final hClassName = className.toHString();
  final inspectablePtr = allocator<COMObject>();

  try {
    final hr = RoActivateInstance(hClassName, inspectablePtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Return a pointer to the relevant class
    return inspectablePtr;
  } on WindowsException catch (e) {
    // If RoActivateInstance fails because combase hasn't been loaded yet then
    // load combase so that it "just works" for apartment-agnostic code.
    if (e.hr == CO_E_NOTINITIALIZED) {
      _initializeMTA();
      final hr = RoActivateInstance(hClassName, inspectablePtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      // Return a pointer to the relevant class
      return inspectablePtr;
    }
    rethrow;
  } finally {
    WindowsDeleteString(hClassName);
  }
}

/// Creates the activation factory for the specified Windows Runtime class in
/// [className].
///
/// [creator] must be the constructor of the class to be created (e.g.
/// `ICalendarFactory.fromPtr`).
///
/// [className] must be the name of the Windows Runtime class (e.g.
/// `Windows.Globalization.Calendar`).
///
/// [iid] must be the IID of the object to be created (e.g.
/// `IID_ICalendarFactory`).
///
/// ```dart
/// final calendarFactory  = createActivationFactory(ICalendarFactory.fromPtr,
///     'Windows.Globalization.Calendar', IID_ICalendarFactory);
/// ```
T createActivationFactory<T extends IInspectable>(
    T Function(Pointer<COMObject>) creator, String className, String iid) {
  // Create a HSTRING representing the object
  final hClassName = className.toHString();
  final pIID = GUIDFromString(iid);
  final activationFactoryPtr = calloc<COMObject>();

  try {
    final hr =
        RoGetActivationFactory(hClassName, pIID, activationFactoryPtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Create and return the relevant interface
    return creator(activationFactoryPtr);
  } on WindowsException catch (e) {
    // If RoGetActivationFactory fails because combase hasn't been loaded yet
    // then load combase so that it "just works" for apartment-agnostic code.
    if (e.hr == CO_E_NOTINITIALIZED) {
      _initializeMTA();
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactoryPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      // Create and return the relevant interface
      return creator(activationFactoryPtr);
    }
    rethrow;
  } finally {
    free(pIID);
    WindowsDeleteString(hClassName);
  }
}

/// Creates a WinRT object.
///
/// [creator] must be the constructor of the class to be created (e.g.
/// `ICalendar.fromPtr`).
///
/// [className] must be an activatable Windows Runtime class (e.g.
/// `Windows.Globalization.Calendar`).
///
/// [iid] must be the IID of the object to be created (e.g. `IID_ICalendar`).
///
/// ```dart
/// final calendar = createObject(ICalendar.fromPtr,
///     'Windows.Globalization.Calendar', IID_ICalendar);
/// ```
T createObject<T extends IInspectable>(
    T Function(Pointer<COMObject>) creator, String className, String iid) {
  final inspectable = IInspectable(activateClass(className));
  return inspectable.cast(creator, iid);
}

/// Ensures the current thread is enabled for COM, using the multithreaded
/// apartment model (MTA).
void _initializeMTA() {
  final pCookie = calloc<IntPtr>();

  try {
    final hr = CoIncrementMTAUsage(pCookie);
    if (FAILED(hr)) throw WindowsException(hr);
  } finally {
    free(pCookie);
  }
}

/// Represents the trust level of an activatable class.
///
/// {@category enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust(0),

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust(1),

  /// The component requires the full privileges of the user.
  fullTrust(2);

  final int value;

  const TrustLevel(this.value);

  factory TrustLevel.from(int value) =>
      TrustLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Returns the interface IIDs that are implemented by the Windows Runtime
/// [object].
///
/// The `IUnknown` and `IInspectable` interfaces are excluded.
List<String> getInterfaces(IInspectable object) {
  final pIIDCount = calloc<Uint32>();
  final pIIDs = calloc<Pointer<GUID>>();

  try {
    final hr = object.ptr.ref.vtable
            .elementAt(3)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(LPVTBL lpVtbl, Pointer<Uint32> iidCount,
                            Pointer<Pointer<GUID>> iids)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<Uint32> iidCount,
                    Pointer<Pointer<GUID>> iids)>()(
        object.ptr.ref.lpVtbl, pIIDCount, pIIDs);

    if (FAILED(hr)) throw WindowsException(hr);

    return [
      for (var i = 0; i < pIIDCount.value; i++) pIIDs.value[i].toString()
    ];
  } finally {
    free(pIIDCount);
    free(pIIDs);
  }
}

/// Gets the fully qualified name of the Windows Runtime [object].
String getClassName(IInspectable object) {
  final hClassName = calloc<HSTRING>();

  try {
    final hr = object.ptr.ref.vtable
            .elementAt(4)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            LPVTBL lpVtbl, Pointer<IntPtr> className)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<IntPtr> className)>()(
        object.ptr.ref.lpVtbl, hClassName);

    if (FAILED(hr)) throw WindowsException(hr);

    return hClassName.toDartString();
  } finally {
    WindowsDeleteString(hClassName.value);
    free(hClassName);
  }
}

/// Gets the trust level of the Windows Runtime [object].
TrustLevel getTrustLevel(IInspectable object) {
  final pTrustLevel = calloc<Int32>();

  try {
    final hr = object.ptr.ref.vtable
            .elementAt(5)
            .cast<
                Pointer<
                    NativeFunction<
                        Int32 Function(
                            LPVTBL lpVtbl, Pointer<Int32> trustLevel)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<Int32> trustLevel)>()(
        object.ptr.ref.lpVtbl, pTrustLevel);

    if (FAILED(hr)) throw WindowsException(hr);

    return TrustLevel.from(pTrustLevel.value);
  } finally {
    free(pTrustLevel);
  }
}

/// Gets the reference count of the Windows Runtime [object].
int refCount(IInspectable object) {
  object.addRef();
  final refCount = object.release();
  return refCount;
}
