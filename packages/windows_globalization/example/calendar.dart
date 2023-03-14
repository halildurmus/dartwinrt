// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Simple example of calling WinRT Calendar APIs.

import 'package:windows_globalization/windows_globalization.dart';

String calendarData(Calendar calendar) =>
    'Calendar: ${calendar.getCalendarSystem()}\n'
    'Name of Month: ${calendar.monthAsFullSoloString()}\n'
    'Day of Month: ${calendar.dayAsPaddedString(2)}\n'
    'Day of Week: ${calendar.dayOfWeekAsFullSoloString()}\n'
    'Year: ${calendar.yearAsString()}\n'
    'Time Zone: ${calendar.timeZoneAsFullString()}\n';

void main() {
  print('Windows Runtime demo. Calling Windows.Globalization.Calendar...\n');
  final calendar = Calendar();
  print(calendarData(calendar));

  final clonedCalendar = calendar.clone()!;
  final comparisonResult = clonedCalendar.compare(calendar);
  print('Comparison result of calendar and its clone: $comparisonResult');

  print('Languages: ${calendar.languages}\n');

  calendar.changeCalendarSystem(CalendarIdentifiers.japanese);
  print(calendarData(calendar));

  calendar.changeCalendarSystem(CalendarIdentifiers.hebrew);
  print(calendarData(calendar));

  final dateTime = calendar.getDateTime();
  print(dateTime);
}
