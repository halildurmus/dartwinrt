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

import 'icurrencyamount.dart';
import 'icurrencyamountfactory.dart';

/// Defines properties for specifying a currency and its amount.
class CurrencyAmount extends IInspectable implements ICurrencyAmount {
  CurrencyAmount.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.CurrencyAmount';

  factory CurrencyAmount.create(String amount, String currency) =>
      createActivationFactory(ICurrencyAmountFactory.fromPtr, _className,
              IID_ICurrencyAmountFactory)
          .create(amount, currency);

  late final _iCurrencyAmount = ICurrencyAmount.from(this);

  @override
  String get amount => _iCurrencyAmount.amount;

  @override
  String get currency => _iCurrencyAmount.currency;
}
