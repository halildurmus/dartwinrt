// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_ui/windows_ui.dart';

void main() async {
  const title = 'Updates available';
  const content = 'New updates have been found for this program. Would you '
      'like to install the new updates?';
  // Create a message dialog
  final messageDialog = MessageDialog.createWithTitle(content, title);

  // Initialize the MessageDialog
  InitializeWithWindow.initialize(messageDialog);

  // Add commands
  messageDialog.commands
    ?..append(UICommand.create('Install updates'))
    ..append(UICommand.create("Don't install"));

  messageDialog
    // Set the command that will be invoked by default
    ..defaultCommandIndex = 0
    // Set the command to be invoked when escape is pressed
    ..cancelCommandIndex = 1;

  // Show the message dialog
  final selectedCommand = await messageDialog.showAsync();
  switch (selectedCommand?.label) {
    case 'Install updates':
      print('"Install updates" button is selected.');
    case "Don't install":
      print('"Don\'t install" button is selected.');
  }
}
