// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:windows_storage/windows_storage.dart';

void printStorageFile(StorageFile? file) {
  if (file == null) return;
  final StorageFile(:name, :path, :dateCreated, :contentType) = file;
  print('Name: $name, path: $path, date created: $dateCreated, '
      'content type: $contentType');
}

void main() async {
  final folder = KnownFolders.documentsLibrary;
  if (folder == null) return;

  // Retrieve all files in the Documents library
  final files = await folder.getFilesAsyncOverloadDefaultOptionsStartAndCount();
  for (final file in files) {
    printStorageFile(file);
  }

  try {
    final file =
        await folder.createFileAsyncOverloadDefaultOptions(r'sample.txt');
    if (file == null) return;

    print('File "${file.name}" created at ${file.path}');
    print('Writing "Hello, world!" into the file...');
    await FileIO.writeTextAsync(file, 'Hello, world!');
    final content = await FileIO.readTextAsync(file);
    print('File content: $content');
    await file.renameAsyncOverloadDefaultOptions('sample2.txt');
    print('File renamed to "${file.name}"');
    await file.deleteAsyncOverloadDefaultOptions();
    print('File successfully deleted.');
  } on WindowsException catch (e) {
    print(e);
  }
}
