// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_ui/windows_ui.dart';

void main() async {
  const applicationId = 'dartwinrt';
  // Create a toast notifier
  final toastNotifier =
      ToastNotificationManager.createToastNotifierWithId(applicationId);
  if (toastNotifier != null) {
    final toastContent = ToastNotificationManager.getTemplateContent(
        ToastTemplateType.toastText02);
    if (toastContent != null) {
      final xmlNodeList = toastContent.getElementsByTagName('text');
      const title = 'Updates available';
      const content = 'New updates have been found for this program.';
      // Set the title on the toast notification
      xmlNodeList.item(0)?.appendChild(toastContent.createTextNode(title));
      // Set the content on the toast notification
      xmlNodeList.item(1)?.appendChild(toastContent.createTextNode(content));

      // Create a toast notification
      final toastNotification =
          ToastNotification.createToastNotification(toastContent);

      // Show the toast notification
      toastNotifier.show(toastNotification);
    }
  }
}
