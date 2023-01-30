// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('groupTypesByParentNamespace', () {
    expect(
        groupTypesByParentNamespace([
          'Windows.Foundation.IAsyncInfo',
          'Windows.Foundation.IClosable',
          'Windows.Foundation.IPropertyValue',
          'Windows.Foundation.IStringable',
          'Windows.Foundation.PropertyValue',
          'Windows.Gaming.Input.Gamepad',
          'Windows.Globalization.Calendar',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
          'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo',
          'Windows.Networking.IHostName',
          'Windows.Storage.IStorageItem',
          'Windows.Storage.UserDataPaths',
          'Windows.Storage.Pickers.FileOpenPicker',
          'Windows.UI.Notifications.IToastNotificationManagerStatics',
          'Windows.UI.Notifications.ToastNotification',
        ]),
        equals([
          NamespaceGroup(
            namespace: 'Windows.Foundation',
            types: [
              'Windows.Foundation.IAsyncInfo',
              'Windows.Foundation.IClosable',
              'Windows.Foundation.IPropertyValue',
              'Windows.Foundation.IStringable',
              'Windows.Foundation.PropertyValue'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Gaming.Input',
            types: ['Windows.Gaming.Input.Gamepad'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization',
            types: ['Windows.Globalization.Calendar'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Globalization.PhoneNumberFormatting',
            types: [
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Networking',
            types: ['Windows.Networking.IHostName'],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage',
            types: [
              'Windows.Storage.IStorageItem',
              'Windows.Storage.UserDataPaths'
            ],
          ),
          NamespaceGroup(
            namespace: 'Windows.Storage.Pickers',
            types: ['Windows.Storage.Pickers.FileOpenPicker'],
          ),
          NamespaceGroup(
            namespace: 'Windows.UI.Notifications',
            types: [
              'Windows.UI.Notifications.IToastNotificationManagerStatics',
              'Windows.UI.Notifications.ToastNotification'
            ],
          )
        ]));
  });
}
