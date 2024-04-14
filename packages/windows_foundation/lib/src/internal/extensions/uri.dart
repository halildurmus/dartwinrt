// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../../ipropertyvalue.dart';
import '../../propertyvalue.dart';
import '../../uri.dart' as winrt_uri;
import 'extensions.dart';

/// @nodoc
extension UriConversion on Uri {
  /// Converts this Uri into a WinRT Uri.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.createUri(toString());
}

/// @nodoc
extension UriListConversions on List<Uri?> {
  /// Creates an array of [VTablePointer]s from a List of [Uri]s.
  Pointer<VTablePointer> toArray({Allocator allocator = calloc}) {
    final array = allocator<VTablePointer>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i]?.toWinRTUri().lpVtbl ?? nullptr;
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() =>
      PropertyValue.createInspectableArray(this);
}

/// @nodoc
extension WinRTUriToUriConversion on winrt_uri.Uri {
  /// Converts this WinRT Uri into a Dart Uri.
  Uri toDartUri() => Uri.parse(toString());
}

/// @nodoc
extension COMObjectPointerConversions on Pointer<COMObject> {
  /// Creates a [List] of [Uri]s from `Pointer<COMObject>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<COMObject>`.
  List<Uri?> toUriList({int length = 1}) {
    final list = <Uri?>[];

    for (var i = 0; i < length; i++) {
      final objectPtr = elementAt(i);
      if (objectPtr.isNull) {
        list.add(null);
        continue;
      }

      // Move each element to a newly allocated pointer so that it can be
      // freed properly.
      final newObjectPtr = calloc<COMObject>()..ref = objectPtr.ref;
      final winrtUri = winrt_uri.Uri.fromPtr(newObjectPtr);
      list.add(winrtUri.toDartUri());
    }

    return list;
  }

  /// Creates a WinRT Uri from this Pointer.
  winrt_uri.Uri toWinRTUri() => winrt_uri.Uri.fromPtr(this);
}
