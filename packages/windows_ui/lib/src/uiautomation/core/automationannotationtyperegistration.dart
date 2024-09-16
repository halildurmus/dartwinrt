// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an annotation registration.
final class AutomationAnnotationTypeRegistration implements WinRTStruct {
  const AutomationAnnotationTypeRegistration(this.localId);

  final int localId;

  @override
  Pointer<NativeAutomationAnnotationTypeRegistration> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr =
        allocator<NativeAutomationAnnotationTypeRegistration>();
    nativeStructPtr.ref.localId = localId;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AutomationAnnotationTypeRegistration &&
        localId == other.localId;
  }

  @override
  int get hashCode => localId.hashCode;
}

/// @nodoc
extension AutomationAnnotationTypeRegistrationListToNativeAutomationAnnotationTypeRegistrationArrayConversion
    on List<AutomationAnnotationTypeRegistration> {
  /// Creates an array of [NativeAutomationAnnotationTypeRegistration]s from a
  /// List of [AutomationAnnotationTypeRegistration]s.
  Pointer<NativeAutomationAnnotationTypeRegistration> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeAutomationAnnotationTypeRegistration>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeAutomationAnnotationTypeRegistrationConversion
    on NativeAutomationAnnotationTypeRegistration {
  /// Converts this [NativeAutomationAnnotationTypeRegistration] into a Dart
  /// [AutomationAnnotationTypeRegistration].
  AutomationAnnotationTypeRegistration toDart() =>
      AutomationAnnotationTypeRegistration(localId);
}

/// @nodoc
extension PointerNativeAutomationAnnotationTypeRegistrationConversion
    on Pointer<NativeAutomationAnnotationTypeRegistration> {
  /// Converts the referenced [NativeAutomationAnnotationTypeRegistration] into
  /// a Dart [AutomationAnnotationTypeRegistration].
  AutomationAnnotationTypeRegistration toDart() {
    final ref = this.ref;
    return AutomationAnnotationTypeRegistration(ref.localId);
  }

  /// Creates a `List<AutomationAnnotationTypeRegistration>` from
  /// `Pointer<NativeAutomationAnnotationTypeRegistration>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeAutomationAnnotationTypeRegistration>`.
  List<AutomationAnnotationTypeRegistration> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
