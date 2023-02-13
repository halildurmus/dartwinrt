// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Helper functions to minimize ceremony when calling WinRT APIs.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'iinspectable.dart';

extension NullPointerCheckHelper on COMObject {
  /// Whether the [lpVtbl] pointer is null.
  bool get isNull => lpVtbl.address == 0;
}

extension WinRTStringConversion on Pointer<HSTRING> {
  /// Gets the Dart string at the handle pointed to by this object.
  String toDartString() => convertFromHString(value);
}

/// Creates a WinRT object.
///
/// ```dart
/// final object = createObject('Windows.Globalization.Calendar', IID_ICalendar);
/// final calendar = ICalendar.fromRawPointer(object);
/// ```
Pointer<COMObject> createObject(String className, String iid) {
  // Activates the specified Windows Runtime class
  final inspectablePtr = activateClass(className);
  // Now use IInspectable to navigate to the relevant interface
  final inspectable = IInspectable(inspectablePtr);
  final objectPtr = inspectable.toInterface(iid);
  inspectable.release();
  // Return a pointer to the relevant class
  return objectPtr;
}

/// Activates the specified Windows Runtime class in the [className].
///
/// This returns the WinRT `IInspectable` interface, which is a subclass of
/// `IUnknown`.
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
Pointer<COMObject> activateClass(String className,
    {Allocator allocator = calloc}) {
  // Create a HSTRING representing the object
  final hClassName = convertToHString(className);
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

/// Creates the activation factory for the specified runtime class using the
/// `className` and `iid`.
///
/// ```dart
/// final object = createActivationFactory(
///     'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
///     IID_IPhoneNumberFormatterStatics);
/// final phoneNumberFormatter = IPhoneNumberFormatterStatics(object);
/// ```
///
/// It is the caller's responsibility to deallocate the returned pointer when
/// they are finished with it. A FFI `Arena` may be passed as a custom allocator
/// for ease of memory management.
Pointer<COMObject> createActivationFactory(String className, String iid,
    {Allocator allocator = calloc}) {
  // Create a HSTRING representing the object
  final hClassName = convertToHString(className);
  final pIID = GUIDFromString(iid);
  final activationFactoryPtr = allocator<COMObject>();

  try {
    final hr =
        RoGetActivationFactory(hClassName, pIID, activationFactoryPtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);
    // Return a pointer to the relevant class
    return activationFactoryPtr;
  } on WindowsException catch (e) {
    // If RoGetActivationFactory fails because combase hasn't been loaded yet
    // then load combase so that it "just works" for apartment-agnostic code.
    if (e.hr == CO_E_NOTINITIALIZED) {
      _initializeMTA();
      final hr =
          RoGetActivationFactory(hClassName, pIID, activationFactoryPtr.cast());
      if (FAILED(hr)) throw WindowsException(hr);
      // Return a pointer to the relevant class
      return activationFactoryPtr;
    }
    rethrow;
  } finally {
    free(pIID);
    WindowsDeleteString(hClassName);
  }
}

/// Ensures the current thread is enabled for COM, using the multithreaded
/// apartment model (MTA).
void _initializeMTA() {
  final pCookie = calloc<IntPtr>();
  try {
    final res = CoIncrementMTAUsage(pCookie);
    if (FAILED(res)) throw WindowsException(res);
  } finally {
    free(pCookie);
  }
}

/// Represents the trust level of an activatable class.
///
/// {@category enum}
enum TrustLevel {
  /// The component has access to resources that are not protected.
  baseTrust,

  /// The component has access to resources requested in the app manifest and
  /// approved by the user.
  partialTrust,

  /// The component requires the full privileges of the user.
  fullTrust
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
                        Int32 Function(Pointer, Pointer<Uint32> iidCount,
                            Pointer<Pointer<GUID>> iids)>>>()
            .value
            .asFunction<
                int Function(Pointer, Pointer<Uint32> iidCount,
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
                        Int32 Function(Pointer, Pointer<IntPtr> className)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<IntPtr> className)>()(
        object.ptr.ref.lpVtbl, hClassName);

    if (FAILED(hr)) throw WindowsException(hr);

    return convertFromHString(hClassName.value);
  } finally {
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
                        Int32 Function(Pointer, Pointer<Int32> trustLevel)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<Int32> trustLevel)>()(
        object.ptr.ref.lpVtbl, pTrustLevel);

    if (FAILED(hr)) throw WindowsException(hr);

    switch (pTrustLevel.value) {
      case 0:
        return TrustLevel.baseTrust;
      case 1:
        return TrustLevel.partialTrust;
      case 2:
        return TrustLevel.fullTrust;
      default:
        throw ArgumentError('GetTrustLevel returned an unexpected value.');
    }
  } finally {
    free(pTrustLevel);
  }
}
