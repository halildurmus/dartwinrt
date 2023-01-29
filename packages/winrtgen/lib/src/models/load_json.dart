// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:convert';
import 'dart:io';

Map<String, String> loadMap(String filename) {
  final load = File('data/$filename').readAsStringSync();
  final decoded = json.decode(load) as Map<String, dynamic>;
  return SplayTreeMap<String, String>.from(decoded);
}

void saveMap(Map<String, String> map, String filename) {
  final encoder = const JsonEncoder.withIndent('    ');
  final file = encoder.convert(map);
  File('data/$filename').writeAsStringSync(file);
}
