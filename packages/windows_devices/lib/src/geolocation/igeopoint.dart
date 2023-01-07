// igeopoint.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'enums.g.dart';
import 'igeoshape.dart';
import 'structs.g.dart';

/// @nodoc
const IID_IGeopoint = '{6bfa00eb-e56e-49bb-9caf-cbaa78a8bcef}';

/// {@category Interface}
/// {@category winrt}
class IGeopoint extends IInspectable implements IGeoshape {
  // vtable begins at 6, is 1 entries long.
  IGeopoint.fromRawPointer(super.ptr);

  factory IGeopoint.from(IInspectable interface) =>
      IGeopoint.fromRawPointer(interface.toInterface(IID_IGeopoint));

  BasicGeoposition get position {
    final retValuePtr = calloc<BasicGeoposition>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(Pointer, Pointer<BasicGeoposition>)>>>()
          .value
          .asFunction<
              int Function(Pointer,
                  Pointer<BasicGeoposition>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {}
  }

  // IGeoshape methods
  late final _iGeoshape = IGeoshape.from(this);

  @override
  GeoshapeType get geoshapeType => _iGeoshape.geoshapeType;

  @override
  int get spatialReferenceId => _iGeoshape.spatialReferenceId;

  @override
  AltitudeReferenceSystem get altitudeReferenceSystem =>
      _iGeoshape.altitudeReferenceSystem;
}
