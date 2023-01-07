// igeoposition.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'civicaddress.dart';
import 'geocoordinate.dart';

/// @nodoc
const IID_IGeoposition = '{c18d0454-7d41-4ff7-a957-9dffb4ef7f5b}';

/// {@category Interface}
/// {@category winrt}
class IGeoposition extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IGeoposition.fromRawPointer(super.ptr);

  factory IGeoposition.from(IInspectable interface) =>
      IGeoposition.fromRawPointer(interface.toInterface(IID_IGeoposition));

  Geocoordinate? get coordinate {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return Geocoordinate.fromRawPointer(retValuePtr);
  }

  CivicAddress? get civicAddress {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return CivicAddress.fromRawPointer(retValuePtr);
  }
}
