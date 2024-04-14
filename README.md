[![Publisher: win32.pub][publisher_badge]][publisher_link]
[![Language: Dart][language_badge]][language_link]
[![License: BSD-3-Clause][license_badge]][license_link]
[![codecov][codecov_badge_link]][codecov_link]

A family of packages that provide an idiomatic Dart projection of modern
Windows Runtime (WinRT) APIs using FFI.

☠☠ **Warning: These packages are highly experimental.** ☠☠

## Documentation 📝

For official documentation, please visit
<https://win32.pub/docs/category/winrt-programming>.

## Usage 📋

With these packages, you can build apps that directly call the WinRT APIs from
Dart using Dart FFI.

For example, you can use them to:

- Retrieve geolocation coordinates:

  ![Geolocator screenshot][geolocator_ss_link]

- Access power information:

  ![Power information screenshot][power_ss_link]

- Access battery information:

  ![Battery information screenshot][battery_ss_link]

- Format phone numbers:

  ![Phone formatter screenshot][formatter_ss_link]

- Send push notifications:

  ![Push notification GIF][notification_gif_link]

- Show a modern message dialog:

  ![Message dialog GIF][dialog_gif_link]

- Recognize texts from images using [OcrEngine][ocrengine_link] APIs:

  ![OCR GIF][ocr_gif_link]

## Examples

Each package contains several examples within its `example` subdirectory,
demonstrating how to invoke various WinRT APIs.

## Packages 📦

| Package                    | Pub                                    | Points            | Popularity        | Likes               |
| -------------------------- | -------------------------------------- | ----------------- | ----------------- | ------------------- |
| [windows_ai]               | [![ai_badge]][ai_link]                 | ![ai_pts]         | ![ai_pop]         | ![ai_likes]         |
| [windows_applicationmodel] | [![app_badge]][app_link]               | ![app_pts]        | ![app_pop]        | ![app_likes]        |
| [windows_data]             | [![data_badge]][data_link]             | ![data_pts]       | ![data_pop]       | ![data_likes]       |
| [windows_devices]          | [![devices_badge]][devices_link]       | ![devices_pts]    | ![devices_pop]    | ![devices_likes]    |
| [windows_foundation]       | [![foundation_badge]][foundation_link] | ![foundation_pts] | ![foundation_pop] | ![foundation_likes] |
| [windows_gaming]           | [![gaming_badge]][gaming_link]         | ![gaming_pts]     | ![gaming_pop]     | ![gaming_likes]     |
| [windows_globalization]    | [![global_badge]][global_link]         | ![global_pts]     | ![global_pop]     | ![global_likes]     |
| [windows_graphics]         | [![graphics_badge]][graphics_link]     | ![graphics_pts]   | ![graphics_pop]   | ![graphics_likes]   |
| [windows_management]       | [![management_badge]][management_link] | ![management_pts] | ![management_pop] | ![management_likes] |
| [windows_media]            | [![media_badge]][media_link]           | ![media_pts]      | ![media_pop]      | ![media_likes]      |
| [windows_networking]       | [![networking_badge]][networking_link] | ![networking_pts] | ![networking_pop] | ![networking_likes] |
| [windows_perception]       | [![perception_badge]][perception_link] | ![perception_pts] | ![perception_pop] | ![perception_likes] |
| [windows_security]         | [![security_badge]][security_link]     | ![security_pts]   | ![security_pop]   | ![security_likes]   |
| [windows_services]         | [![services_badge]][services_link]     | ![services_pts]   | ![services_pop]   | ![services_likes]   |
| [windows_storage]          | [![storage_badge]][storage_link]       | ![storage_pts]    | ![storage_pop]    | ![storage_likes]    |
| [windows_system]           | [![system_badge]][system_link]         | ![system_pts]     | ![system_pop]     | ![system_likes]     |
| [windows_ui]               | [![ui_badge]][ui_link]                 | ![ui_pts]         | ![ui_pop]         | ![ui_likes]         |
| [windows_web]              | [![web_badge]][web_link]               | ![web_pts]        | ![web_pop]        | ![web_likes]        |

## Feature requests and bugs

The WinRT APIs that are projected by `dartwinrt` are limited, but additional
APIs will be added based on user demand, especially if it helps facilitate the
development of new Dart packages for Windows.

If you encounter any issues or have any feature requests, please submit them
through the [issue tracker][issue_tracker_link].

## Acknowledgements

The summary WinRT API documentation comments are
[licensed by Microsoft][legal_notices_link] under the
[Creative Commons Attribution 4.0 International Public License][cc_license_link].

[cc_license_link]: https://github.com/MicrosoftDocs/winrt-api/blob/89e9254fd8b53a648937dbb4324d7f7d6f8d1314/LICENSE
[codecov_badge_link]: https://codecov.io/gh/halildurmus/dartwinrt/branch/main/graph/badge.svg?token=f9L9PfTTLa
[codecov_link]: https://codecov.io/gh/halildurmus/dartwinrt
[issue_tracker_link]: https://github.com/halildurmus/dartwinrt/issues
[language_badge]: https://img.shields.io/badge/language-Dart-blue.svg
[language_link]: https://dart.dev
[legal_notices_link]: https://github.com/MicrosoftDocs/winrt-api/#legal-notices
[license_badge]: https://img.shields.io/github/license/halildurmus/dartwinrt?color=blue
[license_link]: https://opensource.org/licenses/BSD-3-Clause
[publisher_badge]: https://img.shields.io/pub/publisher/windows_foundation.svg
[publisher_link]: https://pub.dev/publishers/win32.pub
[win32_pub_link]: https://win32.pub

[//]: # (Screenshots)
[battery_ss_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/battery.png?raw=true
[formatter_ss_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/formatter.png?raw=true
[geolocator_ss_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/geolocator.png?raw=true
[ocrengine_link]: https://learn.microsoft.com/uwp/api/windows.media.ocr.ocrengine
[power_ss_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/power.png?raw=true

[//]: # (GIFs)
[dialog_gif_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/dialog.gif?raw=true
[notification_gif_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/notification.gif?raw=true
[ocr_gif_link]: https://github.com/halildurmus/dartwinrt/blob/main/screenshots/ocr.gif?raw=true

[//]: # (windows_ai links)
[windows_ai]: ./packages/windows_ai/
[ai_badge]: https://img.shields.io/pub/v/windows_ai.svg
[ai_link]: https://pub.dev/packages/windows_ai
[ai_pts]: https://img.shields.io/pub/points/windows_ai
[ai_pop]: https://img.shields.io/pub/popularity/windows_ai
[ai_likes]: https://img.shields.io/pub/likes/windows_ai

[//]: # (windows_applicationmodel links)
[windows_applicationmodel]: ./packages/windows_applicationmodel/
[app_badge]: https://img.shields.io/pub/v/windows_applicationmodel.svg
[app_link]: https://pub.dev/packages/windows_applicationmodel
[app_pts]: https://img.shields.io/pub/points/windows_applicationmodel
[app_pop]: https://img.shields.io/pub/popularity/windows_applicationmodel
[app_likes]: https://img.shields.io/pub/likes/windows_applicationmodel

[//]: # (windows_data links)
[windows_data]: ./packages/windows_data/
[data_badge]: https://img.shields.io/pub/v/windows_data.svg
[data_link]: https://pub.dev/packages/windows_data
[data_pts]: https://img.shields.io/pub/points/windows_data
[data_pop]: https://img.shields.io/pub/popularity/windows_data
[data_likes]: https://img.shields.io/pub/likes/windows_data

[//]: # (windows_devices links)
[windows_devices]: ./packages/windows_devices/
[devices_badge]: https://img.shields.io/pub/v/windows_devices.svg
[devices_link]: https://pub.dev/packages/windows_devices
[devices_pts]: https://img.shields.io/pub/points/windows_devices
[devices_pop]: https://img.shields.io/pub/popularity/windows_devices
[devices_likes]: https://img.shields.io/pub/likes/windows_devices

[//]: # (windows_foundation links)
[windows_foundation]: ./packages/windows_foundation/
[foundation_badge]: https://img.shields.io/pub/v/windows_foundation.svg
[foundation_link]: https://pub.dev/packages/windows_foundation
[foundation_pts]: https://img.shields.io/pub/points/windows_foundation
[foundation_pop]: https://img.shields.io/pub/popularity/windows_foundation
[foundation_likes]: https://img.shields.io/pub/likes/windows_foundation

[//]: # (windows_gaming links)
[windows_gaming]: ./packages/windows_gaming/
[gaming_badge]: https://img.shields.io/pub/v/windows_gaming.svg
[gaming_link]: https://pub.dev/packages/windows_gaming
[gaming_pts]: https://img.shields.io/pub/points/windows_gaming
[gaming_pop]: https://img.shields.io/pub/popularity/windows_gaming
[gaming_likes]: https://img.shields.io/pub/likes/windows_gaming

[//]: # (windows_globalization links)
[windows_globalization]: ./packages/windows_globalization/
[global_badge]: https://img.shields.io/pub/v/windows_globalization.svg
[global_link]: https://pub.dev/packages/windows_globalization
[global_pts]: https://img.shields.io/pub/points/windows_globalization
[global_pop]: https://img.shields.io/pub/popularity/windows_globalization
[global_likes]: https://img.shields.io/pub/likes/windows_globalization

[//]: # (windows_graphics links)
[windows_graphics]: ./packages/windows_graphics/
[graphics_badge]: https://img.shields.io/pub/v/windows_graphics.svg
[graphics_link]: https://pub.dev/packages/windows_graphics
[graphics_pts]: https://img.shields.io/pub/points/windows_graphics
[graphics_pop]: https://img.shields.io/pub/popularity/windows_graphics
[graphics_likes]: https://img.shields.io/pub/likes/windows_graphics

[//]: # (windows_management links)
[windows_management]: ./packages/windows_management/
[management_badge]: https://img.shields.io/pub/v/windows_management.svg
[management_link]: https://pub.dev/packages/windows_management
[management_pts]: https://img.shields.io/pub/points/windows_management
[management_pop]: https://img.shields.io/pub/popularity/windows_management
[management_likes]: https://img.shields.io/pub/likes/windows_management

[//]: # (windows_media links)
[windows_media]: ./packages/windows_media/
[media_badge]: https://img.shields.io/pub/v/windows_media.svg
[media_link]: https://pub.dev/packages/windows_media
[media_pts]: https://img.shields.io/pub/points/windows_media
[media_pop]: https://img.shields.io/pub/popularity/windows_media
[media_likes]: https://img.shields.io/pub/likes/windows_media

[//]: # (windows_networking links)
[windows_networking]: ./packages/windows_networking/
[networking_badge]: https://img.shields.io/pub/v/windows_networking.svg
[networking_link]: https://pub.dev/packages/windows_networking
[networking_pts]: https://img.shields.io/pub/points/windows_networking
[networking_pop]: https://img.shields.io/pub/popularity/windows_networking
[networking_likes]: https://img.shields.io/pub/likes/windows_networking

[//]: # (windows_perception links)
[windows_perception]: ./packages/windows_perception/
[perception_badge]: https://img.shields.io/pub/v/windows_perception.svg
[perception_link]: https://pub.dev/packages/windows_perception
[perception_pts]: https://img.shields.io/pub/points/windows_perception
[perception_pop]: https://img.shields.io/pub/popularity/windows_perception
[perception_likes]: https://img.shields.io/pub/likes/windows_perception

[//]: # (windows_security links)
[windows_security]: ./packages/windows_security/
[security_badge]: https://img.shields.io/pub/v/windows_security.svg
[security_link]: https://pub.dev/packages/windows_security
[security_pts]: https://img.shields.io/pub/points/windows_security
[security_pop]: https://img.shields.io/pub/popularity/windows_security
[security_likes]: https://img.shields.io/pub/likes/windows_security

[//]: # (windows_services links)
[windows_services]: ./packages/windows_services/
[services_badge]: https://img.shields.io/pub/v/windows_services.svg
[services_link]: https://pub.dev/packages/windows_services
[services_pts]: https://img.shields.io/pub/points/windows_services
[services_pop]: https://img.shields.io/pub/popularity/windows_services
[services_likes]: https://img.shields.io/pub/likes/windows_services

[//]: # (windows_storage links)
[windows_storage]: ./packages/windows_storage/
[storage_badge]: https://img.shields.io/pub/v/windows_storage.svg
[storage_link]: https://pub.dev/packages/windows_storage
[storage_pts]: https://img.shields.io/pub/points/windows_storage
[storage_pop]: https://img.shields.io/pub/popularity/windows_storage
[storage_likes]: https://img.shields.io/pub/likes/windows_storage

[//]: # (windows_system links)
[windows_system]: ./packages/windows_system/
[system_badge]: https://img.shields.io/pub/v/windows_system.svg
[system_link]: https://pub.dev/packages/windows_system
[system_pts]: https://img.shields.io/pub/points/windows_system
[system_pop]: https://img.shields.io/pub/popularity/windows_system
[system_likes]: https://img.shields.io/pub/likes/windows_system

[//]: # (windows_ui links)
[windows_ui]: ./packages/windows_ui/
[ui_badge]: https://img.shields.io/pub/v/windows_ui.svg
[ui_link]: https://pub.dev/packages/windows_ui
[ui_pts]: https://img.shields.io/pub/points/windows_ui
[ui_pop]: https://img.shields.io/pub/popularity/windows_ui
[ui_likes]: https://img.shields.io/pub/likes/windows_ui

[//]: # (windows_web links)
[windows_web]: ./packages/windows_web/
[web_badge]: https://img.shields.io/pub/v/windows_web.svg
[web_link]: https://pub.dev/packages/windows_web
[web_pts]: https://img.shields.io/pub/points/windows_web
[web_pop]: https://img.shields.io/pub/popularity/windows_web
[web_likes]: https://img.shields.io/pub/likes/windows_web
