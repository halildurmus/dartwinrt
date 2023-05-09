// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_storage/windows_storage.dart';

void main() async {
  final documentsFolder = KnownFolders.documentsLibrary;
  if (documentsFolder == null) {
    print('Could not access to the Documents library.');
    return;
  }

  print('Retrieving files from the Documents library...');
  final files =
      await documentsFolder.getFilesAsyncOverloadDefaultOptionsStartAndCount();
  if (files.isEmpty) {
    print('No files found in the Documents library.');
  }

  for (final StorageFile(:name, :path, :dateCreated, :contentType) in files) {
    print('Name: $name | Path: $path | Date created: $dateCreated | '
        'Content type: $contentType');
  }

  print('Creating a file named "sample.txt"...');
  final file =
      await documentsFolder.createFileAsyncOverloadDefaultOptions('sample.txt');
  if (file == null) {
    print('Could not create the file.');
    return;
  }

  print('File "${file.name}" created at ${file.path}');
  print('Writing "Hello, world!" into the file...');
  await FileIO.writeTextAsync(file, 'Hello, world!');
  print('Reading the file...');
  final content = await FileIO.readTextAsync(file);
  print('File content: $content');
  print('Renaming the file to "sample2.txt"...');
  await file.renameAsyncOverloadDefaultOptions('sample2.txt');
  print('File renamed to "${file.name}"');
  print('Deleting the file...');
  await file.deleteAsyncOverloadDefaultOptions();
  print('File successfully deleted.');
}
