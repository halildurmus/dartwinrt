// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../istoragefile.dart';
import 'irandomaccessstream.dart';
import 'randomaccessstreamreference.dart';

/// @nodoc
const IID_IRandomAccessStreamReferenceStatics =
    '{857309dc-3fbf-4e7d-986f-ef3b1a07a964}';

/// {@category interface}
class IRandomAccessStreamReferenceStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IRandomAccessStreamReferenceStatics.fromPtr(super.ptr);

  factory IRandomAccessStreamReferenceStatics.from(IInspectable interface) =>
      IRandomAccessStreamReferenceStatics.fromPtr(
          interface.toInterface(IID_IRandomAccessStreamReferenceStatics));

  RandomAccessStreamReference? createFromFile(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(retValuePtr);
  }

  RandomAccessStreamReference? createFromUri(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer uri,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer uri,
                        Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(retValuePtr);
  }

  RandomAccessStreamReference? createFromStream(IRandomAccessStream? stream) {
    final retValuePtr = calloc<COMObject>();
    final streamPtr = stream == null ? nullptr : stream.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer stream,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer stream,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, streamPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return RandomAccessStreamReference.fromPtr(retValuePtr);
  }
}
