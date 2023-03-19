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

import 'iinputstream.dart';
import 'ioutputstream.dart';

/// @nodoc
const IID_IRandomAccessStreamStatics = '{524cedcf-6e29-4ce5-9573-6b753db66c3a}';

/// {@category interface}
class IRandomAccessStreamStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IRandomAccessStreamStatics.fromPtr(super.ptr);

  factory IRandomAccessStreamStatics.from(IInspectable interface) =>
      IRandomAccessStreamStatics.fromPtr(
          interface.toInterface(IID_IRandomAccessStreamStatics));

  Pointer<COMObject> copyAsync(
      IInputStream? source, IOutputStream? destination) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;
    final destinationPtr =
        destination == null ? nullptr : destination.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL source,
                                LPVTBL destination,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL source,
                        LPVTBL destination, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, sourcePtr, destinationPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> copySizeAsync(
      IInputStream? source, IOutputStream? destination, int bytesToCopy) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;
    final destinationPtr =
        destination == null ? nullptr : destination.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            LPVTBL source,
                            LPVTBL destination,
                            Uint64 bytesToCopy,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL source, LPVTBL destination,
                    int bytesToCopy, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, sourcePtr, destinationPtr, bytesToCopy, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }

  Pointer<COMObject> copyAndCloseAsync(
      IInputStream? source, IOutputStream? destination) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;
    final destinationPtr =
        destination == null ? nullptr : destination.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                LPVTBL source,
                                LPVTBL destination,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, LPVTBL source,
                        LPVTBL destination, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, sourcePtr, destinationPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}
