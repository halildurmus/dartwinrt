// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents an annotation registration.
final class AutomationAnnotationTypeRegistration implements WinRTStruct {
  AutomationAnnotationTypeRegistration(this.localId);

  final int localId;

  @override
  Pointer<NativeAutomationAnnotationTypeRegistration> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr =
        allocator<NativeAutomationAnnotationTypeRegistration>();
    nativeStructPtr.ref..localId = localId;
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
extension PointerNativeAutomationAnnotationTypeRegistrationConversion
    on Pointer<NativeAutomationAnnotationTypeRegistration> {
  /// Converts this [NativeAutomationAnnotationTypeRegistration] to a Dart
  /// [AutomationAnnotationTypeRegistration].
  AutomationAnnotationTypeRegistration toDart() {
    final ref = this.ref;
    return AutomationAnnotationTypeRegistration(ref.localId);
  }
}
