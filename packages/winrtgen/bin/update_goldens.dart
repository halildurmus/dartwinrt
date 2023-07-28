// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:winrtgen/winrtgen.dart';

final goldensDirectory = Directory('../../packages/winrtgen/test/goldens');
final packagesDirectory = Directory('../../packages');

Iterable<File> getGoldenFiles() => goldensDirectory
    .listSync()
    .whereType<File>()
    .where((file) => file.path.endsWith('.golden'));

void main() {
  print('Updating the following golden files:');

  for (final MapEntry(:key, :value) in goldenFiles.entries) {
    print(' - $key');
    final originalFilePath = value;
    final originalFileContent =
        File('${packagesDirectory.path}/$originalFilePath').readAsStringSync();
    // Update the golden file with the original file content.
    getGoldenFiles()
        .firstWhere((f) => f.path.endsWith(key))
        .writeAsStringSync(originalFileContent);
  }

  print('Done.');
}
