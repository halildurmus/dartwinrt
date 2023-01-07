// venuedata.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ivenuedata.dart';

/// Represents the venue associated with a geographic location.
///
/// {@category Class}
/// {@category winrt}
class VenueData extends IInspectable implements IVenueData {
  VenueData.fromRawPointer(super.ptr);

  // IVenueData methods
  late final _iVenueData = IVenueData.from(this);

  @override
  String get id => _iVenueData.id;

  @override
  String get level => _iVenueData.level;
}
