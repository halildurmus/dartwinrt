// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_globalization/windows_globalization.dart';

// Exhaustively test the WinRT Calendar class to make sure overrides, properties
// and methods are working correctly.

void main() {
  test('Windows Runtime is available on test machine', () {
    expect(isWindowsRuntimeAvailable(), isTrue);
  });

  group('Calendar', () {
    test('is a materialized object', () {
      final calendar = Calendar();
      expect(getTrustLevel(calendar), equals(TrustLevel.baseTrust));
      expect(getClassName(calendar), equals('Windows.Globalization.Calendar'));
    });

    test('clone', () {
      final calendar = Calendar();
      final calendar2 = calendar.clone()!;

      expect(getClassName(calendar2), equals('Windows.Globalization.Calendar'));
      expect(calendar2.year, equals(calendar.year));
    });

    test('setToMin', () {
      final calendar = Calendar();
      final today = calendar.clone()!;
      calendar.setToMin();
      expect(calendar.compare(today), isNegative);
    });

    test('setToMax', () {
      final calendar = Calendar();
      final today = calendar.clone()!;
      calendar.setToMax();
      expect(calendar.compare(today), isPositive);
    });

    test('languages', () {
      final calendar = Calendar();
      final languages = calendar.languages;
      expect(languages, isNotNull);
      expect(languages?.length, isPositive);
      expect(languages?.first, contains('-')); // e.g., en-US
    });

    test('numeralSystem getter', () {
      final calendar = Calendar();
      // Examples: Arab, ArabExt, Bali, Beng, Cham, etc.
      expect(calendar.numeralSystem.length, greaterThan(3));
    });

    test('numeralSystem setter', () {
      final calendar = Calendar();
      final arabicNumerals = '٠١٢٣٤٥٦٧٨٩'.split('');
      calendar.numeralSystem = 'arab';
      final date = calendar.monthAsPaddedNumericString(2);

      expect(arabicNumerals, contains(date[0]));
      expect(arabicNumerals, contains(date[1]));
    });

    test('getCalendarSystem', () {
      final calendar = Calendar();
      // Examples: GregorianCalendar, JapaneseCalendar etc.
      final calendarSystem = calendar.getCalendarSystem();
      expect(calendarSystem, endsWith('Calendar'));
    });

    test('changeCalendarSystem', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.era, equals(1));
    });

    test('getClock', () {
      final calendar = Calendar();
      // Examples: 12HourClock, 24HourClock
      final clock = calendar.getClock();
      expect(clock, endsWith('Clock'));
    });

    test('changeClock', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.hour, inInclusiveRange(1, 12));
    });

    test('getDateTime', () {
      final calendar = Calendar();
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
      final calendar = Calendar();
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
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      final dartDate = DateTime.utc(2017, 9, 7, 17, 30);
      calendar
        ..setDateTime(dartDate) // set to a known time
        ..setToNow(); // change to now

      expect(calendar.year, greaterThanOrEqualTo(2022));
    });

    test('firstEra', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);

      // Per Microsoft docs, the WinRT implementation only recognizes the
      // current era (A.D.). See:
      // https://learn.microsoft.com/uwp/api/windows.globalization.calendaridentifiers.gregorian
      expect(calendar.firstEra, equals(1));
    });

    test('lastEra', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.firstEra, equals(1));
      expect(calendar.lastEra, equals(1));

      // Most systems should be in the Reiwa (令和) era, but a system without
      // the calendar update will be in the Heisei (平成) era. In either event,
      // there should be at least four Japanese eras registered by WinRT.
      calendar.changeCalendarSystem(CalendarIdentifiers.japanese);
      expect(calendar.firstEra, equals(1));
      expect(calendar.lastEra, greaterThanOrEqualTo(4));
    });

    test('numberOfEras', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.numberOfEras, equals(1));
    });

    test('era getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.era, equals(1));
    });

    test('era setter', () {
      // Set an invalid era.
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(() => calendar.era = 2, throwsA(isA<WindowsException>()));
    });

    test('addEras', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.japanese)
        ..era = 1 // 明治 (Meiji)
        ..addEras(3); // 平成 (Heisei)
      expect(calendar.era, equals(4));
    });

    test('eraAsFullString (GregorianCalendar)', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.eraAsFullString(), equals('A.D.'));
    });

    test('eraAsFullString (JapaneseCalendar)', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.japanese)
        ..era = 1 // 明治 (Meiji)
        ..addEras(3); // 平成 (Heisei)
      expect(calendar.eraAsFullString(), equals('平成'));
    });

    test('eraAsString', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.japanese)
        ..era = 1; // 明治 (Meiji)
      expect(calendar.eraAsString(1), equals('明'));
    });

    test('firstYearInThisEra', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.hebrew);
      expect(calendar.firstYearInThisEra, equals(5343));
    });

    test('lastYearInThisEra', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.lastYearInThisEra, equals(9999));
    });

    test('numberOfYearsInThisEra', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.japanese)
        ..era = 3; // 昭和 (Showa)
      expect(calendar.numberOfYearsInThisEra, equals(64));
    });

    test('year getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.year, greaterThanOrEqualTo(2021));
    });

    test('day getter', () {
      final calendar = Calendar();
      expect(calendar.day, inInclusiveRange(1, 31));
    });

    test('day setter', () {
      final calendar = Calendar()..day = 13;
      expect(calendar.day, equals(13));
    });

    test('dayOfWeek getter', () {
      final calendar = Calendar();
      expect(calendar.dayOfWeek.value, inInclusiveRange(0, 6));
    });

    test('firstDayInThisMonth getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.firstDayInThisMonth, equals(1));
    });

    test('firstHourInThisPeriod getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.firstHourInThisPeriod, isIn([0, 12]));
    });

    test('firstMinuteInThisHour getter', () {
      final calendar = Calendar();
      expect(calendar.firstMinuteInThisHour, equals(0));
    });

    test('firstMonthInThisYear getter', () {
      final calendar = Calendar();
      expect(calendar.firstMonthInThisYear, equals(1));
    });

    test('firstSecondInThisMinute getter', () {
      final calendar = Calendar();
      expect(calendar.firstSecondInThisMinute, equals(0));
    });

    test('hour getter', () {
      final calendar = Calendar();
      expect(calendar.hour, inInclusiveRange(0, 23));
    });

    test('isDaylightSavingTime getter', () {
      final calendar = Calendar();
      expect(() => calendar.isDaylightSavingTime, returnsNormally);
    });

    test('lastDayInThisMonth getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.lastDayInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('lastHourInThisPeriod getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.lastHourInThisPeriod, equals(11));
    });

    test('lastMinuteInThisHour getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.lastMinuteInThisHour, equals(59));
    });

    test('lastMonthInThisYear getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.lastMonthInThisYear, equals(12));
    });

    test('lastPeriodInThisDay getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.lastPeriodInThisDay, equals(2));
    });

    test('lastSecondInThisMinute getter', () {
      final calendar = Calendar();
      expect(calendar.lastSecondInThisMinute, equals(59));
    });

    test('minute getter', () {
      final calendar = Calendar();
      expect(calendar.minute, inInclusiveRange(0, 59));
    });

    test('month getter', () {
      final calendar = Calendar();
      expect(calendar.month, inInclusiveRange(1, 12));
    });

    test('nanosecond getter', () {
      final calendar = Calendar();
      expect(calendar.nanosecond, isPositive);
    });

    test('numberOfDaysInThisMonth getter', () {
      final calendar = Calendar()
        ..changeCalendarSystem(CalendarIdentifiers.gregorian);
      expect(calendar.numberOfDaysInThisMonth, isIn([28, 29, 30, 31]));
    });

    test('numberOfHoursInThisPeriod', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twentyFourHour);
      // Two days of the year don't have 24 hours in time zones that observe
      // daylight saving time.
      expect(calendar.numberOfHoursInThisPeriod, isIn([23, 24, 25]));
    });

    test('numberOfMinutesInThisHour getter', () {
      final calendar = Calendar();
      expect(calendar.numberOfMinutesInThisHour, equals(60));
    });

    test('numberOfMonthsInThisYear getter', () {
      final calendar = Calendar();
      expect(calendar.numberOfMonthsInThisYear, equals(12));
    });

    test('numberOfPeriodsInThisDay getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twentyFourHour);
      expect(calendar.numberOfPeriodsInThisDay, equals(1));
    });

    test('numberOfSecondsInThisMinute getter', () {
      final calendar = Calendar();
      // Allow for a leap second
      expect(calendar.numberOfSecondsInThisMinute, closeTo(60, 1));
    });

    test('resolvedLanguage getter', () {
      final calendar = Calendar();
      final resolvedLanguage = calendar.resolvedLanguage;

      // Should be something like en-US
      expect(resolvedLanguage[2], equals('-'));
      expect(resolvedLanguage.length, equals(5));
    });

    test('period getter', () {
      final calendar = Calendar()..changeClock(ClockIdentifiers.twelveHour);
      expect(calendar.period, isIn([1, 2]));
    });

    test('second getter', () {
      final calendar = Calendar();
      expect(calendar.second, inInclusiveRange(0, 59));
    });

    test('day of week for current month is the same across Dart and WinRT', () {
      // Dart day of week goes [1..7] for [Mon..Sun]
      final date = DateTime.now();
      final firstOfMonth = date.add(Duration(days: -date.day + 1));
      final dartDay = firstOfMonth.weekday == 7 ? 0 : firstOfMonth.weekday;
      final calendar = Calendar();

      // WinRT day of week goes [0..6] for [Sun..Sat]
      calendar.addDays(-calendar.day + 1);
      final winrtDay = calendar.dayOfWeek.value;

      expect(winrtDay, equals(dartDay));
    });

    test('addYears', () {
      final calendar = Calendar()..addYears(10);
      expect(calendar.year, greaterThanOrEqualTo(2031));
    });

    test('addYears 2', () {
      // These tests will start failing in 2100 :)
      final calendar = Calendar()..addYears(-100);
      expect(calendar.year, inInclusiveRange(1921, 2000));
      calendar.addYears(-100);
      expect(calendar.year, inInclusiveRange(1821, 1900));
      calendar.addYears(-100);
      expect(calendar.year, inInclusiveRange(1721, 1800));
    });

    test('compare equality', () {
      final calendar = Calendar();
      final original = calendar.clone()!;
      calendar
        ..addDays(1)
        ..addDays(-1);
      final compare = calendar.compare(original);
      expect(compare, isZero);
    });

    test('compare positive', () {
      final calendar = Calendar();
      final original = calendar.clone()!;
      calendar
        ..addDays(2)
        ..addDays(-1);
      final compare = calendar.compare(original);
      expect(compare, isPositive);
    });

    test('compare negative', () {
      final calendar = Calendar();
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
        final calendar = Calendar();
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
        final calendar = Calendar();
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

  tearDownAll(forceGC);
}
