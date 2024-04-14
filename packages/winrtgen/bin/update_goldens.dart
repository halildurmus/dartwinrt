// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:winrtgen/winrtgen.dart';

final goldensDir = Directory('test/goldens');
final packagesDir = Directory('../');

Iterable<File> goldenFiles() => goldensDir
    .listSync()
    .whereType<File>()
    .where((file) => file.path.endsWith('.golden'));

void main() {
  print('Updating the following golden files:');

  for (final goldenFile in goldenFiles()) {
    final (:goldenFileName, :originalFilePath) = goldenFileEntries.firstWhere(
        (entry) => goldenFile.path.endsWith(entry.goldenFileName),
        orElse: () => throw StateError(
            'Could not find the original file at ${goldenFile.path}.'));
    print(' - $goldenFileName');
    final filePath = '${packagesDir.path}/$originalFilePath';
    final originalFileContent = File(filePath).readAsStringSync();
    // Update the golden file with the original file content.
    goldenFile.writeAsStringSync(originalFileContent);
  }

  print('Done.');
}
