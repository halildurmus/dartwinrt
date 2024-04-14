// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

void printFileInformation(StorageFile? file) {
  if (file == null) {
    print('No file is selected!');
    return;
  }
  print('File name: ${file.name}');
  print('File type: ${file.fileType}');
  print('File content-type: ${file.contentType}');
  print('File path: ${file.path}');
  print('File date created: ${file.dateCreated}');
  print('File attributes: ${file.attributes}');
}

void main() async {
  final picker = FileOpenPicker()
    ..fileTypeFilter?.append('*') // Allow all file types
    ..suggestedStartLocation = PickerLocationId.desktop
    ..viewMode = PickerViewMode.thumbnail;

  // Initialize the FileOpenPicker
  InitializeWithWindow.initialize(picker);

  final pickedFile = await picker.pickSingleFileAsync();
  printFileInformation(pickedFile);
}
