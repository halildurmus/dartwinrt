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

import 'httpprogressstage.dart';

/// Contains status information on the progress of an HttpClient operation.
final class HttpProgress implements WinRTStruct {
  const HttpProgress(this.stage, this.bytesSent, this.totalBytesToSend,
      this.bytesReceived, this.totalBytesToReceive, this.retries);

  final HttpProgressStage stage;
  final int bytesSent;
  final int? totalBytesToSend;
  final int bytesReceived;
  final int? totalBytesToReceive;
  final int retries;

  @override
  Pointer<NativeHttpProgress> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeHttpProgress>();
    nativeStructPtr.ref
      ..stage = stage.value
      ..bytesSent = bytesSent
      ..totalBytesToSend =
          totalBytesToSend?.toReference(IntType.uint64).lpVtbl ?? nullptr
      ..bytesReceived = bytesReceived
      ..totalBytesToReceive =
          totalBytesToReceive?.toReference(IntType.uint64).lpVtbl ?? nullptr
      ..retries = retries;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HttpProgress &&
        stage == other.stage &&
        bytesSent == other.bytesSent &&
        totalBytesToSend == other.totalBytesToSend &&
        bytesReceived == other.bytesReceived &&
        totalBytesToReceive == other.totalBytesToReceive &&
        retries == other.retries;
  }

  @override
  int get hashCode =>
      stage.hashCode ^
      bytesSent.hashCode ^
      totalBytesToSend.hashCode ^
      bytesReceived.hashCode ^
      totalBytesToReceive.hashCode ^
      retries.hashCode;
}

/// @nodoc
extension HttpProgressListToNativeHttpProgressArrayConversion
    on List<HttpProgress> {
  /// Creates an array of [NativeHttpProgress]s from a List of [HttpProgress]s.
  Pointer<NativeHttpProgress> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeHttpProgress>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeHttpProgressConversion on NativeHttpProgress {
  /// Converts this [NativeHttpProgress] into a Dart [HttpProgress].
  HttpProgress toDart() => HttpProgress(
      HttpProgressStage.from(stage),
      bytesSent,
      IReference<int?>.fromPtr(
              calloc<COMObject>()..ref.lpVtbl = totalBytesToSend,
              referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
          .value,
      bytesReceived,
      IReference<int?>.fromPtr(
              calloc<COMObject>()..ref.lpVtbl = totalBytesToReceive,
              referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
          .value,
      retries);
}

/// @nodoc
extension PointerNativeHttpProgressConversion on Pointer<NativeHttpProgress> {
  /// Converts the referenced [NativeHttpProgress] into a Dart [HttpProgress].
  HttpProgress toDart() {
    final ref = this.ref;
    return HttpProgress(
        HttpProgressStage.from(ref.stage),
        ref.bytesSent,
        IReference<int?>.fromPtr(
                calloc<COMObject>()..ref.lpVtbl = ref.totalBytesToSend,
                referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
            .value,
        ref.bytesReceived,
        IReference<int?>.fromPtr(
                calloc<COMObject>()..ref.lpVtbl = ref.totalBytesToReceive,
                referenceIid: '{6755e376-53bb-568b-a11d-17239868309e}')
            .value,
        ref.retries);
  }

  /// Creates a `List<HttpProgress>` from `Pointer<NativeHttpProgress>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeHttpProgress>`.
  List<HttpProgress> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
