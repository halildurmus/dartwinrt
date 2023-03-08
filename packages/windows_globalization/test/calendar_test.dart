// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_globalization/windows_globalization.dart';

// Exhaustively test the WinRT Calendar class to make sure overrides, properties
// and methods are working correctly.

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  group('Calendar', () {
    late Calendar calendar;

    setUp(() => calendar = Calendar());

    test('is a materialized object', () {
      expect(getTrustLevel(calendar), equals(TrustLevel.baseTrust));
      expect(getClassName(calendar), equals('Windows.Globalization.Calendar'));
    });

    test('clone', () {
      final calendar2 = calendar.clone()!;

      expect(getClassName(calendar2), equals('Windows.Globalization.Calendar'));
      expect(calendar2.year, equals(calendar.year));
    });

    test('setToMin', () {
      final today = calendar.clone()!;
      calendar.setToMin();
      expect(calendar.compare(today), isNegative);
    });

    test('setToMax', () {
      final today = calendar.clone()!;
      calendar.setToMax();
      expect(calendar.compare(today), isPositive);
    });

    test('languages', () {
      final languages = calendar.languages;
      expect(languages.length, isPositive);
      expect(languages.first, contains('-')); // e.g. en-US
    });

    test('numeralSystem getter', () {
      // Examples: Arab, ArabExt, Bali, Beng, Cham, etc.
      expect(calendar.numeralSystem.length, greaterThan(3));
    });

    test('numeralSystem setter', () {
      final arabicNumerals = '٠١٢٣٤٥٦٧٨٩'.split('');
      calendar.numeralSystem = 'arab';
      final date = calendar.monthAsPaddedNumericString(2);

      expect(arabicNumerals, contains(date[0]));
      expect(arabicNumerals, contains(date[1]));
    });

    test('getCalendarSystem', () {
      // Examples: GregorianCalendar, JapaneseCalendar etc.
      final calendarSystem = calendar.getCalendarSystem();
      expect(calendarSystem, endsWith('Calendar'));
    });

    test('changeCalendarSystem', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.era, equals(1));
    });

    test('getClock', () {
      // Examples: 12HourClock, 24HourClock
      final clock = calendar.getClock();
      expect(clock, endsWith('Clock'));
    });

    test('changeClock', () {
      calendar.changeClock('12HourClock');
      expect(calendar.hour, inInclusiveRange(1, 12));
    });

    test('getDateTime', () {
      final winrtDate = calendar.getDateTime();
      final dartDate = DateTime.now().toUtc();

      expect(winrtDate.year, equals(dartDate.year));
      expect(winrtDate.month, equals(dartDate.month));
      expect(winrtDate.day, equals(dartDate.day));
      expect(winrtDate.hour, equals(dartDate.hour));
      expect(winrtDate.minute, equals(dartDate.minute));
      expect(winrtDate.second, closeTo(dartDate.second, 2)); // allow flex
    });

    test('setDateTime', () {
      final dartDate = DateTime.utc(2017, 9, 7, 17, 30);
      calendar.setDateTime(dartDate);
      final winrtDate = calendar.getDateTime();
      expect(winrtDate.year, equals(2017));
      expect(winrtDate.month, equals(9));
      expect(winrtDate.day, equals(7));
      expect(winrtDate.hour, equals(17));
      expect(winrtDate.minute, equals(30));
    });

    test('setToNow', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      final dartDate = DateTime.utc(2017, 9, 7, 17, 30);
      calendar
        ..setDateTime(dartDate) // set to a known time
        ..setToNow(); // change to now

      expect(calendar.year, greaterThanOrEqualTo(2022));
    });

    test('firstEra', () {
      calendar.changeCalendarSystem('GregorianCalendar');

      // Per Microsoft docs, the WinRT implementation only recognizes the
      // current era (A.D.). See:
      // https://docs.microsoft.com/en-us/uwp/api/windows.globalization.calendaridentifiers.gregorian
      expect(calendar.firstEra, equals(1));
    });

    test('lastEra', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.firstEra, equals(1));
      expect(calendar.lastEra, equals(1));

      // Most systems should be in the Reiwa (令和) era, but a system without
      // the calendar update will be in the Heisei (平成) era. In either event,
      // there should be at least four Japanese eras registered by WinRT.
      calendar.changeCalendarSystem('JapaneseCalendar');
      expect(calendar.firstEra, equals(1));
      expect(calendar.lastEra, greaterThanOrEqualTo(4));
    });

    test('numberOfEras', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.numberOfEras, equals(1));
    });

    test('era getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.era, equals(1));
    });

    test('era setter', () {
      // Set an invalid era.
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(() => calendar.era = 2, throwsA(isA<WindowsException>()));
    });

    test('addEras', () {
      calendar
        ..changeCalendarSystem('JapaneseCalendar')
        ..era = 1 // 明治 (Meiji)
        ..addEras(3); // 平成 (Heisei)
      expect(calendar.era, equals(4));
    });

    test('eraAsFullString (GregorianCalendar)', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.eraAsFullString(), equals('A.D.'));
    });

    test('eraAsFullString (JapaneseCalendar)', () {
      calendar
        ..changeCalendarSystem('JapaneseCalendar')
        ..era = 1 // 明治 (Meiji)
        ..addEras(3); // 平成 (Heisei)
      expect(calendar.eraAsFullString(), equals('平成'));
    });

    test('eraAsString', () {
      calendar
        ..changeCalendarSystem('JapaneseCalendar')
        ..era = 1; // 明治 (Meiji)
      expect(calendar.eraAsString(1), equals('明'));
    });

    test('firstYearInThisEra', () {
      calendar.changeCalendarSystem('HebrewCalendar');
      expect(calendar.firstYearInThisEra, equals(5343));
    });

    test('lastYearInThisEra', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.lastYearInThisEra, equals(9999));
    });

    test('numberOfYearsInThisEra', () {
      calendar
        ..changeCalendarSystem('JapaneseCalendar')
        ..era = 3; // 昭和 (Showa)
      expect(calendar.numberOfYearsInThisEra, equals(64));
    });

    test('year getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.year, greaterThanOrEqualTo(2021));
    });

    test('day getter', () {
      expect(calendar.day, inInclusiveRange(1, 31));
    });

    test('day setter', () {
      calendar.day = 13;
      expect(calendar.day, equals(13));
    });

    test('dayOfWeek getter', () {
      expect(calendar.dayOfWeek.value, inInclusiveRange(0, 6));
    });

    test('firstDayInThisMonth getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.firstDayInThisMonth, equals(1));
    });

    test('firstHourInThisPeriod getter', () {
      calendar.changeClock('12HourClock');
      expect(calendar.firstHourInThisPeriod, isIn([0, 12]));
    });

    test('firstMinuteInThisHour getter', () {
      expect(calendar.firstMinuteInThisHour, equals(0));
    });

    test('firstMonthInThisYear getter', () {
      expect(calendar.firstMonthInThisYear, equals(1));
    });

    test('firstSecondInThisMinute getter', () {
      expect(calendar.firstSecondInThisMinute, equals(0));
    });

    test('hour getter', () {
      expect(calendar.hour, inInclusiveRange(0, 23));
    });

    test('isDaylightSavingTime getter', () {
      expect(() => calendar.isDaylightSavingTime, returnsNormally);
    });

    test('lastDayInThisMonth getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.lastDayInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('lastHourInThisPeriod getter', () {
      calendar.changeClock('12HourClock');
      expect(calendar.lastHourInThisPeriod, equals(11));
    });

    test('lastMinuteInThisHour getter', () {
      calendar.changeClock('12HourClock');
      expect(calendar.lastMinuteInThisHour, equals(59));
    });

    test('lastMonthInThisYear getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.lastMonthInThisYear, equals(12));
    });

    test('lastPeriodInThisDay getter', () {
      calendar.changeClock('12HourClock');
      expect(calendar.lastPeriodInThisDay, equals(2));
    });

    test('lastSecondInThisMinute getter', () {
      expect(calendar.lastSecondInThisMinute, equals(59));
    });

    test('minute getter', () {
      expect(calendar.minute, inInclusiveRange(0, 59));
    });

    test('month getter', () {
      expect(calendar.month, inInclusiveRange(1, 12));
    });

    test('nanosecond getter', () {
      expect(calendar.nanosecond, isPositive);
    });

    test('numberOfDaysInThisMonth getter', () {
      calendar.changeCalendarSystem('GregorianCalendar');
      expect(calendar.numberOfDaysInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('numberOfHoursInThisPeriod', () {
      calendar.changeClock('24HourClock');
      // Two days of the year don't have 24 hours in time zones that observe
      // daylight saving time.
      expect(calendar.numberOfHoursInThisPeriod, isIn([23, 24, 25]));
    });

    test('numberOfMinutesInThisHour getter', () {
      expect(calendar.numberOfMinutesInThisHour, equals(60));
    });

    test('numberOfMonthsInThisYear getter', () {
      expect(calendar.numberOfMonthsInThisYear, equals(12));
    });

    test('numberOfPeriodsInThisDay getter', () {
      calendar.changeClock('24HourClock');
      expect(calendar.numberOfPeriodsInThisDay, equals(1));
    });

    test('numberOfSecondsInThisMinute getter', () {
      // Allow for a leap second
      expect(calendar.numberOfSecondsInThisMinute, closeTo(60, 1));
    });

    test('resolvedLanguage getter', () {
      final resolvedLanguage = calendar.resolvedLanguage;

      // Should be something like en-US
      expect(resolvedLanguage[2], equals('-'));
      expect(resolvedLanguage.length, equals(5));
    });

    test('period getter', () {
      calendar.changeClock('12HourClock');
      expect(calendar.period, isIn([1, 2]));
    });

    test('second getter', () {
      expect(calendar.second, inInclusiveRange(0, 59));
    });

    test('Day of week for current month is the same across Dart and WinRT', () {
      // Dart day of week goes [1..7] for [Mon..Sun]
      final date = DateTime.now();
      final firstOfMonth = date.add(Duration(days: -date.day + 1));
      final dartDay = firstOfMonth.weekday == 7 ? 0 : firstOfMonth.weekday;

      // WinRT day of week goes [0..6] for [Sun..Sat]
      calendar.addDays(-calendar.day + 1);
      final winrtDay = calendar.dayOfWeek.value;

      expect(winrtDay, equals(dartDay));
    });

    test('addYears', () {
      calendar.addYears(10);
      expect(calendar.year, greaterThanOrEqualTo(2031));
    });

    test('addYears 2', () {
      // These tests will start failing in 2100 :)
      calendar.addYears(-100);
      expect(calendar.year, inInclusiveRange(1921, 2000));
      calendar.addYears(-100);
      expect(calendar.year, inInclusiveRange(1821, 1900));
      calendar.addYears(-100);
      expect(calendar.year, inInclusiveRange(1721, 1800));
    });

    test('Compare equality', () {
      final original = calendar.clone()!;
      calendar
        ..addDays(1)
        ..addDays(-1);
      final compare = calendar.compare(original);
      expect(compare, isZero);
    });

    test('Compare positive', () {
      final original = calendar.clone()!;
      calendar
        ..addDays(2)
        ..addDays(-1);
      final compare = calendar.compare(original);
      expect(compare, isPositive);
    });

    test('Compare negative', () {
      final original = calendar.clone()!;
      calendar
        ..addDays(2)
        ..addDays(-3);
      final compare = calendar.compare(original);
      expect(compare, isNegative);
    });

    test('monthAsFullString', () {
      // Repeat to ensure that this doesn't fail because of some kind of memory
      // issue.
      for (var i = 0; i < 10000; i++) {
        final month = calendar.monthAsFullString();
        expect(
            month,
            isIn([
              'January',
              'February',
              'March',
              'April',
              'May',
              'June',
              'July',
              'August',
              'September',
              'October',
              'November',
              'December'
            ]));
      }
    });

    test('monthAsString', () {
      // Repeat to ensure that this doesn't fail because of some kind of memory
      // issue.
      for (var i = 0; i < 10000; i++) {
        final month = calendar.monthAsString(3);
        expect(
            month,
            isIn([
              'Jan',
              'Feb',
              'Mar',
              'Apr',
              'May',
              'Jun',
              'Jul',
              'Aug',
              'Sep',
              'Oct',
              'Nov',
              'Dec'
            ]));
      }
    });

    // test('createCalendarWithTimeZone constructor', () {
    //   final pickerPtr = CreateObject(
    //       'Windows.Storage.Pickers.FileOpenPicker', IID_IFileOpenPicker);
    //   final picker = IFileOpenPicker.fromPtr(pickerPtr);
    //   final languages = picker.fileTypeFilter..replaceAll(['en-US', 'en-GB']);

    //   const IID_Iterable = '{E2FCC7C1-3BFC-5A0B-B2B0-72E769D1CB7E}';
    //   final pIterable = languages.toInterface(IID_Iterable);
    //   final customCal = Calendar.createCalendarWithTimeZone(
    //       pIterable, 'GregorianCalendar', '24HourClock', 'America/Los_Angeles');

    //   expect(customCal.getTimeZone(), equals('America/Los_Angeles'));
    // });
  });
}
