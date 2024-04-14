// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies less frequently used options for a MessageDialog.
final class MessageDialogOptions extends WinRTFlagsEnum<MessageDialogOptions> {
  const MessageDialogOptions(super.value, {super.name});

  factory MessageDialogOptions.from(int value) =>
      MessageDialogOptions.values.firstWhere((e) => e.value == value,
          orElse: () => MessageDialogOptions(value));

  static const none = MessageDialogOptions(0, name: 'none');
  static const acceptUserInputAfterDelay =
      MessageDialogOptions(1, name: 'acceptUserInputAfterDelay');

  static const List<MessageDialogOptions> values = [
    none,
    acceptUserInputAfterDelay
  ];

  @override
  MessageDialogOptions operator &(MessageDialogOptions other) =>
      MessageDialogOptions(value & other.value);

  @override
  MessageDialogOptions operator |(MessageDialogOptions other) =>
      MessageDialogOptions(value | other.value);
}
