// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:winrtgen/winrtgen.dart';

final goldensDir = Directory('../../packages/winrtgen/test/goldens');
final packagesDir = Directory('../../packages');

Iterable<File> getGoldenFiles() => goldensDir
    .listSync()
    .whereType<File>()
    .where((file) => file.path.endsWith('.golden'));

void main() {
  print('Updating the following golden files:');

  for (final goldenFile in getGoldenFiles()) {
    final MapEntry(:key, :value) = goldenFiles.entries.firstWhere(
        (entry) => goldenFile.path.endsWith(entry.key),
        orElse: () => throw StateError(
            'Could not find the original file for ${goldenFile.path}'));
    print(' - $key');
    final originalFilePath = '${packagesDir.path}/$value';
    final originalFileContent = File(originalFilePath).readAsStringSync();
    // Update the golden file with the original file content.
    goldenFile.writeAsStringSync(originalFileContent);
  }

  print('Done.');
}
