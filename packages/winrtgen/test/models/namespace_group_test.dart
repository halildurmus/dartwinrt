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
            'Windows.Foundation',
            [
              'Windows.Foundation.IAsyncInfo',
              'Windows.Foundation.IClosable',
              'Windows.Foundation.IPropertyValue',
              'Windows.Foundation.IStringable',
              'Windows.Foundation.PropertyValue'
            ],
          ),
          NamespaceGroup(
            'Windows.Gaming.Input',
            ['Windows.Gaming.Input.Gamepad'],
          ),
          NamespaceGroup(
            'Windows.Globalization',
            ['Windows.Globalization.Calendar'],
          ),
          NamespaceGroup(
            'Windows.Globalization.PhoneNumberFormatting',
            [
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter',
              'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo'
            ],
          ),
          NamespaceGroup(
            'Windows.Networking',
            ['Windows.Networking.IHostName'],
          ),
          NamespaceGroup(
            'Windows.Storage',
            ['Windows.Storage.IStorageItem', 'Windows.Storage.UserDataPaths'],
          ),
          NamespaceGroup(
            'Windows.Storage.Pickers',
            ['Windows.Storage.Pickers.FileOpenPicker'],
          ),
          NamespaceGroup(
            'Windows.UI.Notifications',
            [
              'Windows.UI.Notifications.IToastNotificationManagerStatics',
              'Windows.UI.Notifications.ToastNotification'
            ],
          )
        ]));
  });
}
