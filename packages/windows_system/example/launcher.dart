// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_storage/windows_storage.dart';
import 'package:windows_system/windows_system.dart';

Future<void> launchUri(Uri uri) async {
  // Launch the Uri and get the result of the operation
  final isSuccess = await Launcher.launchUriAsync(uri);
  if (isSuccess) {
    print("Uri '$uri' successfully launched");
  } else {
    print("Uri '$uri' launch failed");
  }
}

Future<void> launchFolderPath(String path) async {
  // Launch the folder and get the result of the operation
  final isSuccess = await Launcher.launchFolderPathAsync(path);
  if (isSuccess) {
    print("Folder '$path' successfully launched");
  } else {
    print("Folder '$path' launch failed");
  }
}

void main() async {
  // Launch the https://win32.pub page in the default browser
  await launchUri(Uri.parse('https://win32.pub'));

  // Launch the Windows Settings app
  await launchUri(Uri.parse('ms-settings:'));

  // Launch the Default Apps settings page
  await launchUri(Uri.parse('ms-settings:defaultapps'));

  // Get the file handlers for '.html' files
  final handlers = await Launcher.findFileHandlersAsync('.html');
  if (handlers.isNotEmpty) {
    print("Found ${handlers.length} handler(s) for '.html' files:");
    for (final handler in handlers) {
      print(' - ${handler?.displayInfo?.displayName}');
    }
  }

  final path = UserDataPaths.getDefault()?.downloads;
  if (path != null) {
    // Launch the Downloads folder
    await launchFolderPath(path);
  }
}
