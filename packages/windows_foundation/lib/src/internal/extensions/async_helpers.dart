// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:win32/win32.dart';

import '../../asyncstatus.dart';
import '../../iasyncaction.dart';
import '../../iasyncinfo.dart';
import '../../iasyncoperation.dart';

extension IAsyncActionHelper on IAsyncAction {
  /// Converts this [IAsyncAction] to a [Future].
  Future<void> toFuture() {
    final completer = Completer<void>();
    _completeAsyncDelegate(this, completer, completer.complete);
    return completer.future;
  }
}

extension IAsyncOperationHelper<T> on IAsyncOperation<T> {
  /// Converts this [IAsyncOperation] to a [Future].
  ///
  /// The [Future] will be completed with the given [value].
  Future<R> toFuture<R>(R Function() value) {
    final completer = Completer<R>();
    _completeAsyncDelegate(this, completer, () => completer.complete(value()));
    return completer.future;
  }
}

/// Completes the given [completer] by polling [asyncDelegate]'s `status`
/// property every `1/60` seconds until the [asyncDelegate] completes.
///
/// [onCompleted] is called when the [asyncDelegate] completes successfully.
Future<void> _completeAsyncDelegate<T extends IAsyncInfo, C>(T asyncDelegate,
    Completer<C> completer, void Function() onCompleted) async {
  try {
    while (asyncDelegate.status == AsyncStatus.started) {
      // Yield execution to Dart for 1/60 seconds to avoid blocking the app.
      await Future<void>.delayed(
          const Duration(microseconds: 1 * 1000 * 1000 ~/ 60));
    }

    switch (asyncDelegate.status) {
      // This case is handled by the while loop above.
      case AsyncStatus.started:
        break;
      case AsyncStatus.completed:
        onCompleted();
      case AsyncStatus.canceled:
        completer.completeError('The async operation canceled!');
      case AsyncStatus.error:
        completer.completeError(WindowsException(asyncDelegate.errorCode));
    }
  } catch (error, stackTrace) {
    completer.completeError(error, stackTrace);
  }
}
