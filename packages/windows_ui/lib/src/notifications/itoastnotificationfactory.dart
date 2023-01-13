// itoastnotificationfactory.dart

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotificationFactory = '{04124b20-82c6-4229-b109-fd9ed4662b53}';

/// {@category interface}
class IToastNotificationFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IToastNotificationFactory.fromRawPointer(super.ptr);

  factory IToastNotificationFactory.from(IInspectable interface) =>
      IToastNotificationFactory.fromRawPointer(
          interface.toInterface(IID_IToastNotificationFactory));

  Pointer<COMObject> createToastNotification(Pointer<COMObject> content) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject> content,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(
                    Pointer, Pointer<COMObject> content, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, content.cast<Pointer<COMObject>>().value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return retValuePtr;
  }
}
