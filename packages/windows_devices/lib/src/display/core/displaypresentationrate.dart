// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Describes an overall presentation rate composed of a rational refresh
/// rate and a divider.
final class DisplayPresentationRate implements WinRTStruct {
  DisplayPresentationRate(
      this.verticalSyncRate, this.verticalSyncsPerPresentation);

  final NativeRational verticalSyncRate;
  final int verticalSyncsPerPresentation;

  @override
  Pointer<NativeDisplayPresentationRate> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeDisplayPresentationRate>();
    nativeStructPtr.ref
      ..verticalSyncRate = verticalSyncRate
      ..verticalSyncsPerPresentation = verticalSyncsPerPresentation;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DisplayPresentationRate &&
        verticalSyncRate == other.verticalSyncRate &&
        verticalSyncsPerPresentation == other.verticalSyncsPerPresentation;
  }

  @override
  int get hashCode =>
      verticalSyncRate.hashCode ^ verticalSyncsPerPresentation.hashCode;
}

/// @nodoc
extension PointerNativeDisplayPresentationRateConversion
    on Pointer<NativeDisplayPresentationRate> {
  /// Converts this [NativeDisplayPresentationRate] to a Dart
  /// [DisplayPresentationRate].
  DisplayPresentationRate toDart() {
    final ref = this.ref;
    return DisplayPresentationRate(
        ref.verticalSyncRate, ref.verticalSyncsPerPresentation);
  }

  /// Creates a `List<DisplayPresentationRate>` from
  /// `Pointer<NativeDisplayPresentationRate>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeDisplayPresentationRate>`.
  List<DisplayPresentationRate> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
