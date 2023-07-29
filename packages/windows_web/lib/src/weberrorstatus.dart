// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines errors encountered during operations involving web services,
/// such as authentication, proxy configuration, and destination URIs.
enum WebErrorStatus implements WinRTEnum {
  unknown(0),
  certificateCommonNameIsIncorrect(1),
  certificateExpired(2),
  certificateContainsErrors(3),
  certificateRevoked(4),
  certificateIsInvalid(5),
  serverUnreachable(6),
  timeout(7),
  errorHttpInvalidServerResponse(8),
  connectionAborted(9),
  connectionReset(10),
  disconnected(11),
  httpToHttpsOnRedirection(12),
  httpsToHttpOnRedirection(13),
  cannotConnect(14),
  hostNameNotResolved(15),
  operationCanceled(16),
  redirectFailed(17),
  unexpectedStatusCode(18),
  unexpectedRedirection(19),
  unexpectedClientError(20),
  unexpectedServerError(21),
  insufficientRangeSupport(22),
  missingContentLengthSupport(23),
  multipleChoices(300),
  movedPermanently(301),
  found(302),
  seeOther(303),
  notModified(304),
  useProxy(305),
  temporaryRedirect(307),
  badRequest(400),
  unauthorized(401),
  paymentRequired(402),
  forbidden(403),
  notFound(404),
  methodNotAllowed(405),
  notAcceptable(406),
  proxyAuthenticationRequired(407),
  requestTimeout(408),
  conflict(409),
  gone(410),
  lengthRequired(411),
  preconditionFailed(412),
  requestEntityTooLarge(413),
  requestUriTooLong(414),
  unsupportedMediaType(415),
  requestedRangeNotSatisfiable(416),
  expectationFailed(417),
  internalServerError(500),
  notImplemented(501),
  badGateway(502),
  serviceUnavailable(503),
  gatewayTimeout(504),
  httpVersionNotSupported(505);

  @override
  final int value;

  const WebErrorStatus(this.value);

  factory WebErrorStatus.from(int value) =>
      WebErrorStatus.values.byValue(value);
}
