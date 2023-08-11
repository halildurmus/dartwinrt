// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

/// Represents the packages in the `packages` folder, excluding the `winrtgen`
/// package.
enum Package {
  /// The `windows_ai` package.
  ai('windows_ai'),

  /// The `windows_applicationmodel` package.
  applicationmodel('windows_applicationmodel'),

  /// The `windows_data` package.
  data('windows_data'),

  /// The `windows_devices` package.
  devices('windows_devices'),

  /// The `windows_foundation` package.
  foundation('windows_foundation'),

  /// The `windows_gaming` package.
  gaming('windows_gaming'),

  /// The `windows_globalization` package.
  globalization('windows_globalization'),

  /// The `windows_graphics` package.
  graphics('windows_graphics'),

  /// The `windows_management` package.
  management('windows_management'),

  /// The `windows_media` package.
  media('windows_media'),

  /// The `windows_networking` package.
  networking('windows_networking'),

  /// The `windows_perception` package.
  perception('windows_perception'),

  /// The `windows_security` package.
  security('windows_security'),

  /// The `windows_services` package.
  services('windows_services'),

  /// The `windows_storage` package.
  storage('windows_storage'),

  /// The `windows_system` package.
  system('windows_system'),

  /// The `windows_ui` package.
  ui('windows_ui'),

  /// The `windows_web` package.
  web('windows_web');

  /// The name of the package (e.g., `windows_foundation`).
  final String name;

  const Package(this.name);
}
