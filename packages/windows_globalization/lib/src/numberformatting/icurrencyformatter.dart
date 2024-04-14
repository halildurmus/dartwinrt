// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'inumberformatter.dart';
import 'inumberformatteroptions.dart';
import 'inumberparser.dart';

/// @nodoc
const IID_ICurrencyFormatter = '{11730ca5-4b00-41b2-b332-73b12a497d54}';

class ICurrencyFormatter extends IInspectable
    implements INumberFormatterOptions, INumberFormatter, INumberParser {
  ICurrencyFormatter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICurrencyFormatterVtbl>().ref;

  final _ICurrencyFormatterVtbl _vtable;

  factory ICurrencyFormatter.from(IInspectable interface) =>
      interface.cast(ICurrencyFormatter.fromPtr, IID_ICurrencyFormatter);

  String get currency {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Currency.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "Currency may be read-only for releases after Windows 8.1. Instead, use a new CurrencyFormatter.")
  set currency(String value) {
    final hr = _vtable.put_Currency
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.toHString());

    if (FAILED(hr)) throwWindowsException(hr);
  }

  late final _iNumberFormatterOptions = INumberFormatterOptions.from(this);

  @override
  List<String>? get languages => _iNumberFormatterOptions.languages;

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

final class _ICurrencyFormatterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Currency;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr value)>>
      put_Currency;
}
