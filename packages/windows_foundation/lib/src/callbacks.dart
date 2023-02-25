// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Callbacks used in the WinRT APIs.

import 'dart:ffi';

import 'package:win32/win32.dart';

typedef ApplicationDataSetVersionHandler = Void Function(
    Pointer<COMObject> setVersionRequest);
typedef AsyncActionCompletedHandler = Void Function(
    Pointer<COMObject> asyncInfo, Int32 asyncStatus);
typedef AsyncOperationCompletedHandler = Void Function(
    Pointer<COMObject> asyncInfo, Int32 asyncStatus);
typedef EventHandler = Void Function(
    Pointer<COMObject> sender, Pointer<COMObject> args);
typedef MapChangedEventHandler = Void Function(
    Pointer<COMObject> sender, Pointer<COMObject> args);
typedef NetworkStatusChangedEventHandler = Void Function(
    Pointer<COMObject> sender);
typedef TypedEventHandler = Void Function(
    Pointer<COMObject> sender, Pointer<COMObject> args);
