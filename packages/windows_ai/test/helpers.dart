// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32_registry/win32_registry.dart';

int getWindowsBuildNumber() {
  final key = Registry.openPath(RegistryHive.localMachine,
      path: r'Software\Microsoft\Windows NT\CurrentVersion');
  final buildNumber = key.getValueAsString('CurrentBuildNumber');
  key.close();
  if (buildNumber != null) return int.parse(buildNumber);
  throw StateError('Failed to retrieve Windows build number.');
}
