// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Demonstrates calling WinRT FileOpenPicker to pick a file from console window.

import 'package:win32/win32.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

void main() async {
  final picker = FileOpenPicker()
    ..fileTypeFilter.append('*') // Allow all file types
    ..suggestedStartLocation = PickerLocationId.desktop
    ..viewMode = PickerViewMode.thumbnail;

  final hwnd = GetConsoleWindow(); // Use GetShellWindow() for Flutter apps
  // Initialize the FileOpenPicker with the window handle (HWND).
  // You can omit the 'hwnd' parameter on Flutter apps as GetShellWindow() is
  // used by default if omitted.
  InitializeWithWindow.initialize(picker, hwnd);

  final pickedFile = await picker.pickSingleFileAsync();
  if (pickedFile != null) {
    print('File name: ${pickedFile.name}');
    print('File type: ${pickedFile.fileType}');
    print('File content-type: ${pickedFile.contentType}');
    print('File path: ${pickedFile.path}');
    print('File date created: ${pickedFile.dateCreated}');
    print('File attributes: ${pickedFile.attributes}');
  } else {
    print('No file is selected!');
  }
}
