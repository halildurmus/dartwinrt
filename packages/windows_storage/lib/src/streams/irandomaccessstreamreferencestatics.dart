// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../istoragefile.dart';
import 'irandomaccessstream.dart';
import 'randomaccessstreamreference.dart';

/// @nodoc
const IID_IRandomAccessStreamReferenceStatics =
    '{857309dc-3fbf-4e7d-986f-ef3b1a07a964}';

class IRandomAccessStreamReferenceStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IRandomAccessStreamReferenceStatics.fromPtr(super.ptr);

  factory IRandomAccessStreamReferenceStatics.from(IInspectable interface) =>
      interface.cast(IRandomAccessStreamReferenceStatics.fromPtr,
          IID_IRandomAccessStreamReferenceStatics);

  RandomAccessStreamReference? createFromFile(IStorageFile? file) {
    final streamReference = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> streamReference)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> streamReference)>()(
            ptr.ref.lpVtbl, file.lpVtbl, streamReference);

    if (FAILED(hr)) {
      free(streamReference);
      throwWindowsException(hr);
    }

    if (streamReference.isNull) {
      free(streamReference);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(streamReference);
  }

  RandomAccessStreamReference? createFromUri(Uri? uri) {
    final streamReference = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer uri,
                                Pointer<COMObject> streamReference)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer uri,
                        Pointer<COMObject> streamReference)>()(ptr.ref.lpVtbl,
            uri?.toWinRTUri().lpVtbl ?? nullptr, streamReference);

    if (FAILED(hr)) {
      free(streamReference);
      throwWindowsException(hr);
    }

    if (streamReference.isNull) {
      free(streamReference);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(streamReference);
  }

  RandomAccessStreamReference? createFromStream(IRandomAccessStream? stream) {
    final streamReference = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer stream,
                                Pointer<COMObject> streamReference)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer stream,
                        Pointer<COMObject> streamReference)>()(
            ptr.ref.lpVtbl, stream.lpVtbl, streamReference);

    if (FAILED(hr)) {
      free(streamReference);
      throwWindowsException(hr);
    }

    if (streamReference.isNull) {
      free(streamReference);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(streamReference);
  }
}
