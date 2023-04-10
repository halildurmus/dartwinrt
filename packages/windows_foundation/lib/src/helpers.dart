// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide IUnknown;

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

/// Gets the reference count of the Windows Runtime [object].
int refCount(IInspectable object) {
  object.addRef();
  final refCount = object.release();
  return refCount;
}
