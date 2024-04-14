// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;
import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

import '../models/models.dart';

extension StringHelpers on String {
  /// Capitalizes the first character of this string.
  String capitalize() {
    if (isEmpty) return this;
    if (length == 1) return toUpperCase();
    return this[0].toUpperCase() + substring(1); // e.g., value -> Value
  }

  /// Whether this string represents a generated exports file (i.e.,
  /// `exports.g.dart`).
  bool get isExportsFile => this == 'exports.g.dart';

  /// Whether this string represents a factory interface (e.g.,
  /// `ICalendarFactory`, `ICalendarFactory2`).
  bool get isFactoryInterface =>
      RegExp(r'^(I[A-Z][a-zA-Z0-9]+Factory\d{0,2})$').hasMatch(this);

  /// Whether this string represents a factory or statics file (e.g.,
  /// `icalendarfactory.dart`, `ilauncherstatics.dart`).
  bool get isFactoryOrStaticsFile =>
      RegExp(r'(i[a-z0-9]+(factory|statics)\d{0,2}\.dart)$').hasMatch(this);

  /// Whether this string represents a get property (e.g., `get_Size`).
  bool get isGetProperty =>
      RegExp(r'^(get_([A-Z][a-zA-Z0-9]+))$').hasMatch(this);

  /// Checks if this string represents an Interface Identifier (IID).
  ///
  /// An IID is a unique identifier represented as a string enclosed in curly
  /// braces, following the format: `{XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX}`,
  /// where each `X` represents a hexadecimal digit (0-9 or a-f,
  /// case-insensitive).
  ///
  /// Examples of valid IIDs:
  ///   - `{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}`
  ///   - `{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}`
  bool get isIID =>
      RegExp(r'^{[0-9a-fA-F]{8}-([0-9a-fA-F]{4}-){3}[0-9a-fA-F]{12}}$')
          .hasMatch(this);

  /// Checks if this string represents a valid import line in Dart.
  ///
  /// Import lines in Dart start with the keyword `import`, followed by a string
  /// literal enclosed in single or double quotes. Optionally, the import line
  /// may also include an `as` clause to provide a custom prefix for the
  /// imported library, a `show` clause to selectively import only a subset of
  /// the library's contents, or a `hide` clause to selectively hide a subset of
  /// the library's contents.
  ///
  /// Examples of valid import lines:
  ///   - `import 'dart:ffi';`
  ///   - `import 'package:path/path.dart' as path;`
  ///   - `import "package:windows_foundation/windows_foundation.dart";`
  ///   - `import 'package:win32/win32.dart' as win32 show COMObject, HRESULT
  ///   hide DocumentProperties, SUCCEEDED;`
  ///   - `import 'fileproperties/basicproperties.dart';`
  ///   - `import "istoragefile.dart";`
  bool get isImportLine => RegExp(
          r'''^import\s(['"])([\w:\.\/]+)\1(?:\s+as\s+([\w]+))?(?:\s+show\s+([\w\s,]+))?(?:\s+hide\s+([\w\s,]+))?;$''')
      .hasMatch(this);

  /// Whether this string represents a part file (e.g., `ireference_part.dart`).
  bool get isPartFile => RegExp(r'^(([a-z0-9]+)_part\.dart)$').hasMatch(this);

  /// Whether this string represents a property (e.g., `get_Size`, `put_Size`).
  bool get isProperty => isGetProperty || isSetProperty;

  /// Whether this string represents a set property (e.g., `put_Size`).
  bool get isSetProperty =>
      RegExp(r'^(put_([A-Z][a-zA-Z0-9]+))$').hasMatch(this);

  /// Whether this string represents a simple array size parameter (e.g.,
  /// `__valueSize`).
  bool get isSimpleArraySizeParam =>
      RegExp(r'^(__([a-z][a-zA-Z0-9]+)Size)$').hasMatch(this);

  /// Whether this string represents a statics interface (e.g.,
  /// `ILauncherStatics`, `ILauncherStatics2`).
  bool get isStaticsInterface =>
      RegExp(r'^(I[A-Z][a-zA-Z0-9]+Statics\d{0,2})$').hasMatch(this);

  /// Checks if this string represents a WinRT namespace.
  ///
  /// A WinRT namespace consists of two or more namespace segments, separated by
  /// periods (`.`), where each segment starts with an uppercase letter.
  ///
  /// The first segment of a WinRT namespace is always `Windows`, followed by
  /// one or more additional namespace segments.
  ///
  /// Examples of valid WinRT namespaces:
  ///  - `Windows.Foundation`
  ///  - `Windows.Globalization`
  ///  - `Windows.Storage.Streams`
  bool get isWinRTNamespace =>
      RegExp(r'^(Windows\.((?=[A-Z])[a-zA-Z0-9]+\.)*[A-Z][a-zA-Z0-9]*)$')
          .hasMatch(this);

  /// Checks if this string represents a WinRT type.
  ///
  /// A WinRT type consists of two or more namespace segments, separated by
  /// periods (`.`), followed by the actual type name, which starts with an
  /// uppercase letter.
  ///
  /// The first segment of a WinRT type is always `Windows`, followed by one or
  /// more additional namespace segments, and the type name.
  ///
  /// For example, `Windows.Gaming.Input.Gamepad` represents a WinRT type with
  /// three namespace segments and the type name `Gamepad`.
  ///
  /// Examples of valid WinRT types:
  ///   - Windows.Foundation.Collections.IMap`2
  ///   - `Windows.Gaming.Input.Gamepad`
  ///   - `Windows.Globalization.Calendar`
  bool get isWinRTType =>
      RegExp(r'^(Windows\.((?=[A-Z])[a-zA-Z0-9]+\.)+[A-Z][a-zA-Z0-9]*(`\d)?)$')
          .hasMatch(this);

  /// Returns the last component of a WinRT type.
  ///
  /// For example, for the type `Windows.Globalization.Calendar`, the method
  /// will return `Calendar`.
  String get lastComponent => contains('.') ? split('.').last : this;

  /// Adds the `?` suffix to this string to make it nullable.
  ///
  /// This method appends a `?` suffix to the input string, effectively making
  /// it a nullable type. If the input string already ends with a `?` suffix,
  /// the method will return the string unchanged.
  String nullable() => endsWith('?') ? this : '$this?';

  /// Extracts the outer type from a generic type.
  ///
  /// This getter takes a generic type, such as `IAsyncOperation<StorageFile>`,
  /// and retrieves the outer generic type (`IAsyncOperation` in this example).
  ///
  /// This getter looks for the first occurrence of the angle bracket ('<')
  /// character and extracts the portion of the string before it to obtain the
  /// outer type.
  ///
  /// If the string does not contain angle brackets ('<', '>') indicating a
  /// generic type, the getter will return the original string without any
  /// changes.
  String get outerType => contains('<') ? substring(0, indexOf('<')) : this;

  /// Wrap this string in single quotes (e.g., `foo` -> `'foo'`).
  String quote() => "'$this'";

  /// Calculates the relative path from the [from] path to the path represented
  /// by this string.
  String relativePathFrom(String from) =>
      path.relative(this, from: from).replaceAll(r'\', '/');

  /// Removes all characters representing the generic type parameter count from
  /// this string.
  ///
  /// Generic types in WinRT are represented using the backtick (\`) followed by
  /// the number of type parameters within angle brackets. The method uses a
  /// [RegExp] to find and replace all occurrences of this pattern with an empty
  /// string to strip the generic type parameter count from the input.
  ///
  /// For example, if the string is `Windows.Foundation.IReference`1`, the
  /// method will return `Windows.Foundation.IReference`.
  String stripGenerics() => replaceAll(RegExp(r'(`\d)'), '');

  /// Removes all leading underscores from this string, if any.
  String stripLeadingUnderscores() =>
      startsWith('_') ? substring(1).stripLeadingUnderscores() : this;

  /// Removes the `?` suffix from this string, if present.
  String stripQuestionMarkSuffix() =>
      endsWith('?') ? substring(0, length - 1) : this;

  /// Converts this string to `camelCase` convention.
  ///
  /// The method also accounts for special cases, such as currency codes or
  /// predefined acronyms.
  ///
  /// For example, if the string matches a known currency code (e.g., `USD`), it
  /// will be converted to lowercase (e.g., `usd`).
  ///
  /// Similarly, if the string starts with a recognized acronym (e.g.,
  /// `IPAddress`), the method will ensure the acronym is in lowercase and the
  /// rest of the string follows the `camelCase` format (e.g., `ipAddress`).
  String toCamelCase() {
    if (isEmpty) return this;
    if (length == 1) return toLowerCase();

    // e.g., USD -> usd
    if (_currencyCodes.contains(this)) return toLowerCase();

    for (final acronym in _acronyms) {
      if (startsWith(acronym)) {
        // e.g., IPAddress -> ipAddress, UInt32 -> uint32
        return acronym.toLowerCase() + substring(acronym.length);
      }
    }

    // e.g., ICalendar -> iCalendar
    return this[0].toLowerCase() + substring(1);
  }

  /// Converts this string into a formatted doc comment(s).
  ///
  /// The [wrapLength] parameter (defaults to `80`) controls the maximum number
  /// of characters allowed in a single line of the doc comment. If a word would
  /// exceed the [wrapLength], it will be wrapped to the next line.
  ///
  /// Example usage:
  /// ```dart
  /// final content =
  ///     'This is a long text that needs to be formatted into a doc comment. '
  ///     'It will be broken down into multiple lines, each not exceeding the '
  ///     'default wrapLength of 80 characters.';
  /// final docComment = content.toDocComment();
  /// print(docComment);
  /// ```
  ///
  /// Result:
  /// ```
  /// /// This is a long text that needs to be formatted into a doc comment. It will
  /// /// be broken down into multiple lines, each not exceeding the default
  /// /// wrapLength of 80 characters.
  /// ```
  ///
  /// If the string contains newline characters (`\n`), they will be treated as
  /// line breaks, resulting in separate paragraphs in the doc comments.
  ///
  /// For example:
  /// ```dart
  /// final contentWithNewlines =
  ///     'This is the first paragraph. \n This is the second paragraph.';
  /// final docComment = contentWithNewlines.toDocComment();
  /// print(docComment);
  /// ```
  ///
  /// Result:
  /// ```
  /// /// This is the first paragraph.
  /// ///
  /// /// This is the second paragraph.
  /// ```
  String toDocComment({int wrapLength = 80}) {
    if (isEmpty) return '';

    final words = split(' ');
    final textLine = StringBuffer('///');
    final wrappedText = StringBuffer();

    for (final word in words) {
      // If the word is a newline character, start a new paragraph.
      if (word == '\n') {
        textLine.write('\n///\n///');
        wrappedText.write(textLine);
        textLine.clear();
        continue;
      }

      // If the word would exceed the wrapLength, wrap it to the next line.
      if ((textLine.length + word.length) >= wrapLength) {
        textLine.write('\n');
        wrappedText.write(textLine);
        textLine
          ..clear()
          ..write('/// $word');
      } else {
        textLine.write(' $word');
      }
    }

    wrappedText.write(textLine);
    return wrappedText.toString().trimRight();
  }

  /// Converts a WinRT type (e.g., `Windows.Globalization.Calendar`) into a
  /// matching Dart file name (e.g., `calendar.dart`).
  String toFileName() => '${lastComponent.stripGenerics().toLowerCase()}.dart';

  /// Converts a WinRT type (e.g., `Windows.Storage.Pickers.FileOpenPicker`)
  /// into a matching file path (e.g.,
  /// `windows_storage/lib/src/pickers/fileopenpicker.dart`).
  String toFilePath() => '${toFolderPath()}/${toFileName()}';

  /// Converts a WinRT type (e.g., `Windows.Storage.Pickers.FileOpenPicker`)
  /// into a matching folder path (e.g., `windows_storage/lib/src/pickers`).
  String toFolderPath() {
    assert(isWinRTType);
    // e.g., Windows.Storage.Pickers.FileOpenPicker -> [Pickers]
    final segments = split('.').skip(2).toList()..removeLast();
    if (segments.isEmpty) return '${toPackageName()}/lib/src';
    return '${toPackageName()}/lib/src/${segments.join('/').toLowerCase()}';
  }

  /// Converts a WinRT type signature into a unique Interface Identifier (IID).
  ///
  /// This method converts a WinRT type signature, such as
  /// `IMap<String, String>`, represented in the form:
  /// `pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)`.
  ///
  /// into a unique IID, using an algorithm defined here:
  /// https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
  ///
  /// If the string is an IID, the method will return the original string as is.
  String toIID() {
    if (isIID) return this;

    final signatureInBytes = const Utf8Encoder().convert(this);
    final data = [..._wrtPinterfaceNamespace, ...signatureInBytes];
    final sha1Hash = sha1.convert(data);
    final sha1Bytes = Uint8List.fromList(sha1Hash.bytes).buffer.asByteData();

    final firstPart = sha1Bytes.getUint32(0);
    final secondPart = sha1Bytes.getUint16(4);
    final thirdPart = (sha1Bytes.getUint16(6) & 0x0FFF) | 0x5000;
    final fourthPart = (sha1Bytes.getUint64(8, Endian.little) & ~0xC0) | 0x80;

    return Guid.fromComponents(firstPart, secondPart, thirdPart, fourthPart)
        .toString();
  }

  /// Converts a WinRT type (e.g., `Windows.Globalization.Calendar`) into a
  /// matching package name.
  ///
  /// For example, if the string is `Windows.Globalization.Calendar`,
  /// `windows_globalization` will be returned.
  String toPackageName() {
    assert(isWinRTType);
    return split('.').take(2).join('_').toLowerCase();
  }

  /// Converts this string into a safe Dart identifier.
  ///
  /// This method ensures that the resulting identifier is not a reserved word
  /// or a private modifier. If the original string matches any of the known
  /// reserved words or starts with an underscore (private modifier), it will be
  /// transformed to ensure it becomes a valid and safe Dart identifier.
  ///
  /// For instance, if the string is `null`, `null_` will be returned.
  ///
  /// In case of a string with leading underscores, like `__valueSize`,
  /// `valueSize` will be returned.
  String toSafeIdentifier() =>
      _badIdentifiers.contains(this) ? '${this}_' : stripLeadingUnderscores();

  /// Converts the Windows-style path separator characters (`\`) in this string
  /// to Unix-style forward slashes (`/`).
  String toUnixPath() => replaceAll(r'\', '/');

  /// Extracts the type arguments from this string if it represents a generic
  /// type; otherwise, returns the original string unchanged.
  ///
  /// For instance, if the string represents a generic type, such as
  /// `IAsyncOperation<StorageFile>`, the extracted type argument `StorageFile`
  /// will be returned.
  ///
  /// In case of a generic type with multiple type arguments, like
  /// `IMap<String, String>`, the extracted type arguments `String, String` will
  /// be returned.
  String get typeArguments =>
      contains('<') ? substring(indexOf('<') + 1, lastIndexOf('>')) : this;

  /// Returns the [TypeDef] for this string if it represents a WinRT type
  /// (e.g., `Windows.Foundation.Uri`).
  TypeDef get typeDef => WinRTMetadataStore.findTypeDef(this);
}

extension IterableStringHelpers on Iterable<String> {
  /// Sorts the list of import lines according to the Effective Dart: Style
  /// guidelines (see
  /// https://dart.dev/guides/language/effective-dart/style#ordering).
  ///
  /// The import order is as follows:
  /// 1. Dart SDK imports (e.g., `import 'dart:async';`).
  /// 2. Package imports (e.g., `import 'package:win32/win32.dart';`).
  /// 3. Project-relative imports (e.g., `import 'istoragefile.dart';`).
  ///
  /// Example usage:
  /// ```dart
  /// final imports = [
  ///   "import 'fileproperties/basicproperties.dart';",
  ///   "import 'package:win32/win32.dart';",
  ///   "import 'dart:async';",
  ///   "import 'dart:ffi';",
  ///   "import 'istoragefile.dart';",
  /// ];
  /// final sortedImports = imports.sortImports();
  /// sortedImports.forEach(print);
  /// ```
  ///
  /// Result:
  /// ```
  /// import 'dart:async';
  /// import 'dart:ffi';
  ///
  /// import 'package:win32/win32.dart';
  ///
  /// import 'fileproperties/basicproperties.dart';
  /// import 'istoragefile.dart';
  /// ```
  Iterable<String> sortImports() {
    if (isEmpty) return this;

    final dartImports = SplayTreeSet<String>();
    final packageImports = SplayTreeSet<String>();
    final projectRelativeImports = SplayTreeSet<String>();

    for (final element in this) {
      assert(element.isImportLine);

      if (element.contains('dart:')) {
        dartImports.add(element);
      } else if (element.contains('package:')) {
        packageImports.add(element);
      } else {
        projectRelativeImports.add(element);
      }
    }

    return [
      if (dartImports.isNotEmpty) ...dartImports,
      if (packageImports.isNotEmpty) ...[
        if (dartImports.isNotEmpty) '',
        ...packageImports
      ],
      if (projectRelativeImports.isNotEmpty) ...[
        if (dartImports.isNotEmpty || packageImports.isNotEmpty) '',
        ...projectRelativeImports,
      ],
    ];
  }
}

/// Represents a collection of acronyms that appear in various places within
/// Windows Metadata.
///
/// These acronyms are utilized in projections to adhere to the Dart style guide
/// recommendations.
///
/// See https://dart.dev/guides/language/effective-dart/style#do-capitalize-acronyms-and-abbreviations-longer-than-two-letters-like-words
const _acronyms = <String>{
  'AC', 'DB', 'DPad', 'HD', 'IO', 'IP', 'NT', 'TV', 'UI', 'WiFi', //
};

/// A list of all words that should not be used as identifiers.
const _badIdentifiers = <String>{..._dartReservedWords, ..._dartTypes};

/// Represents a collection of currency codes that appear in the
/// `CurrencyIdentifiers` class.
///
/// See https://learn.microsoft.com/uwp/api/windows.globalization.currencyidentifiers
const _currencyCodes = <String>{
  'HNL', 'AED', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'AUD', 'AWG', //
  'AZN', 'BBD', 'BDT', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BRL', //
  'BSD', 'BTN', 'BWP', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLP', 'CNY', //
  'COP', 'CRC', 'CUP', 'CVE', 'CZK', 'DJF', 'DKK', 'DOP', 'DZD', 'EGP', //
  'ERN', 'ETB', 'EUR', 'FJD', 'FKP', 'GBP', 'GEL', 'GHS', 'GIP', 'GMD', //
  'GNF', 'GTQ', 'GYD', 'HKD', 'RON', 'HRK', 'HTG', 'HUF', 'IDR', 'ILS', //
  'INR', 'IQD', 'IRR', 'ISK', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', //
  'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', //
  'LSL', 'LTL', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MKD', 'MMK', 'MNT', //
  'MOP', 'MRO', 'MUR', 'MVR', 'MWK', 'MXN', 'MYR', 'MZN', 'NAD', 'NGN', //
  'NIO', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', //
  'PLN', 'PYG', 'QAR', 'RSD', 'RUB', 'RWF', 'SAR', 'SBD', 'SCR', 'SDG', //
  'SEK', 'SGD', 'SHP', 'SLL', 'SOS', 'SRD', 'STD', 'SYP', 'SZL', 'THB', //
  'TJS', 'TMT', 'TND', 'TOP', 'TRY', 'TTD', 'TWD', 'TZS', 'UAH', 'UGX', //
  'USD', 'UYU', 'UZS', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XCD', 'XOF', //
  'XPF', 'XXX', 'YER', 'ZAR', 'ZMW', 'ZWL', 'BYN', 'SSP', 'STN', 'VES', 'MRU'
};

/// Reserved words in the Dart language that can never be used as identifiers.
/// Keywords are from https://dart.dev/guides/language/language-tour#keywords.
const _dartReservedWords = <String>{
  // Contextual keywords and built-in identifiers are not included here, since
  // they can be used as valid identifiers in most places.
  'assert', 'break', 'case', 'catch', 'class', 'const', 'continue', 'default',
  'do', 'else', 'enum', 'extends', 'false', 'final', 'finally', 'for', 'if',
  'in', 'is', 'new', 'null', 'rethrow', 'return', 'super', 'switch', 'this',
  'throw', 'true', 'try', 'var', 'void', 'while', 'with',
};

/// Dart intrinsic types that will cause problems if used as identifiers.
const _dartTypes = <String>{
  'bool', 'double', 'int', 'List', 'Map', 'Set', 'String' //
};

/// A byte representation of the pinterface instantiation.
///
/// This is hardcoded as the value `{11f47ad5-7b73-42c0-abae-878b1e16adee}` in
/// https://learn.microsoft.com/uwp/winrt-cref/winrt-type-system
const _wrtPinterfaceNamespace = <int>[
  0x11, 0xf4, 0x7a, 0xd5,
  0x7b, 0x73,
  0x42, 0xc0,
  0xab, 0xae,
  0x87, 0x8b, 0x1e, 0x16, 0xad, 0xee, //
];
