// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_globalization/windows_globalization.dart';

void printCalendarData(Calendar calendar) {
  print('Calendar: ${calendar.getCalendarSystem()}');
  print('Languages: ${calendar.languages}');
  print('Name of Month: ${calendar.monthAsFullSoloString()}');
  print('Day of Month: ${calendar.dayAsPaddedString(2)}');
  print('Day of Week: ${calendar.dayOfWeekAsFullSoloString()}');
  print('Year: ${calendar.yearAsString()}');
  print('Time Zone: ${calendar.timeZoneAsFullString()}');
  print('DateTime: ${calendar.getDateTime()}\n');
}

void main() {
  final calendar = Calendar();
  printCalendarData(calendar);

  calendar.changeCalendarSystem(CalendarIdentifiers.japanese);
  printCalendarData(calendar);

  calendar.changeCalendarSystem(CalendarIdentifiers.hebrew);
  printCalendarData(calendar);
}
