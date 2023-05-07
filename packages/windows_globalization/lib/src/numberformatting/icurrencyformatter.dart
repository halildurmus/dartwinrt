// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'inumberformatter.dart';
import 'inumberformatteroptions.dart';
import 'inumberparser.dart';

/// @nodoc
const IID_ICurrencyFormatter = '{11730ca5-4b00-41b2-b332-73b12a497d54}';

/// {@category interface}
class ICurrencyFormatter extends IInspectable
    implements INumberFormatterOptions, INumberFormatter, INumberParser {
  // vtable begins at 6, is 2 entries long.
  ICurrencyFormatter.fromPtr(super.ptr);

  factory ICurrencyFormatter.from(IInspectable interface) =>
      ICurrencyFormatter.fromPtr(interface.toInterface(IID_ICurrencyFormatter));

  String get currency {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  @Deprecated(
      'Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.')
  set currency(String value) {
    final hString = value.toHString();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl, IntPtr value)>>>()
                  .value
                  .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
              ptr.ref.lpVtbl, hString);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hString);
    }
  }

  late final _iNumberFormatterOptions = INumberFormatterOptions.from(this);

  @override
  List<String> get languages => _iNumberFormatterOptions.languages;

  @override
  String get geographicRegion => _iNumberFormatterOptions.geographicRegion;

  @override
  int get integerDigits => _iNumberFormatterOptions.integerDigits;

  @override
  set integerDigits(int value) =>
      _iNumberFormatterOptions.integerDigits = value;

  @override
  int get fractionDigits => _iNumberFormatterOptions.fractionDigits;

  @override
  set fractionDigits(int value) =>
      _iNumberFormatterOptions.fractionDigits = value;

  @override
  bool get isGrouped => _iNumberFormatterOptions.isGrouped;

  @override
  set isGrouped(bool value) => _iNumberFormatterOptions.isGrouped = value;

  @override
  bool get isDecimalPointAlwaysDisplayed =>
      _iNumberFormatterOptions.isDecimalPointAlwaysDisplayed;

  @override
  set isDecimalPointAlwaysDisplayed(bool value) =>
      _iNumberFormatterOptions.isDecimalPointAlwaysDisplayed = value;

  @override
  String get numeralSystem => _iNumberFormatterOptions.numeralSystem;

  @override
  set numeralSystem(String value) =>
      _iNumberFormatterOptions.numeralSystem = value;

  @override
  String get resolvedLanguage => _iNumberFormatterOptions.resolvedLanguage;

  @override
  String get resolvedGeographicRegion =>
      _iNumberFormatterOptions.resolvedGeographicRegion;

  late final _iNumberFormatter = INumberFormatter.from(this);

  @override
  String formatInt(int value) => _iNumberFormatter.formatInt(value);

  @override
  String formatUInt(int value) => _iNumberFormatter.formatUInt(value);

  @override
  String formatDouble(double value) => _iNumberFormatter.formatDouble(value);

  late final _iNumberParser = INumberParser.from(this);

  @override
  int? parseInt(String text) => _iNumberParser.parseInt(text);

  @override
  int? parseUInt(String text) => _iNumberParser.parseUInt(text);

  @override
  double? parseDouble(String text) => _iNumberParser.parseDouble(text);
}
