// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Helper wrapper classes for WinRT COM interop interfaces.
// See https://learn.microsoft.com/en-us/windows/apps/develop/ui-input/display-ui-objects

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'authentication/web/core/webtokenrequest.dart';
import 'authentication/web/core/webtokenrequestresult.dart';

/// Exposes a method through which a client can provide an owner window to a
/// Windows Runtime (WinRT) object used in a desktop application.
///
/// {@category class}
final class WebAuthenticationCoreManagerInterop {
  static const _className =
      'Windows.Security.Authentication.Web.Core.WebAuthenticationCoreManager';

  // IAsyncOperation<WebTokenRequestResult>
  static const _iid = '{0a815852-7c44-5674-b3d2-fa2e4c1e46c9}';

  static Future<WebTokenRequestResult?> requestTokenForWindowAsync(
      int appWindow, WebTokenRequest request) {
    final webAuthenticationCoreManagerInterop = createActivationFactory(
        IWebAuthenticationCoreManagerInterop.new,
        _className,
        IID_IWebAuthenticationCoreManagerInterop);

    final pIID = GUIDFromString(_iid);
    final asyncOperationPtr = calloc<COMObject>();

    final hr = webAuthenticationCoreManagerInterop.requestTokenForWindowAsync(
        appWindow,
        request.ptr.cast<Pointer<COMObject>>().value,
        pIID,
        asyncOperationPtr.cast());
    if (FAILED(hr)) throw WindowsException(hr);

    final asyncOperation = IAsyncOperation<WebTokenRequestResult?>.fromPtr(
        asyncOperationPtr,
        creator: WebTokenRequestResult.fromPtr);

    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
