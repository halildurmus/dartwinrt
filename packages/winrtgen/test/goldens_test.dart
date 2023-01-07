@TestOn('windows')

import 'dart:io';

import 'package:dart_style/dart_style.dart';
import 'package:test/test.dart';
import 'package:winmd/winmd.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('Windows Runtime golden', () {
    const type = 'Windows.Globalization.ICalendar';
    final typeDef = MetadataStore.getMetadataForType(type)!;
    final dartClass = WinRTInterfaceProjection(typeDef).toString();
    final formattedDartClass = DartFormatter().format(dartClass);

    File('test/goldens/icalendar.comparison')
        .writeAsStringSync(formattedDartClass);
    final golden = File('test/goldens/icalendar.golden').readAsStringSync();

    // Ignore whitespace to avoid \r\n vs. \n conflicts.
    expect(formattedDartClass, equalsIgnoringWhitespace(golden));
  });
}
