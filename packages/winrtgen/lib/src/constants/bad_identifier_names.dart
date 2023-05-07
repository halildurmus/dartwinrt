// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// A list of all words that should not be used as identifiers.
const badIdentifierNames = <String>{..._dartReservedWords, ..._dartTypes};

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
  'int', 'double', 'String', 'bool', 'List', 'Set', 'Map', //
};
