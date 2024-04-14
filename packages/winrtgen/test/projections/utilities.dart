// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

String failedCheck({
  bool freeRetVal = false,
  String identifier = 'retValuePtr',
}) {
  if (!freeRetVal) {
    return 'if (FAILED(hr)) throwWindowsException(hr);';
  }

  return '''
    if (FAILED(hr)) {
      free($identifier);
      throwWindowsException(hr);
    }
''';
}

String nullCheck(
  String identifier, {
  bool castReturn = false,
  String typeParameter = 'T',
}) {
  final cast = castReturn ? ' as $typeParameter' : '';
  return '''
    if ($identifier.isNull) {
      free($identifier);
      return null$cast;
    }
''';
}
