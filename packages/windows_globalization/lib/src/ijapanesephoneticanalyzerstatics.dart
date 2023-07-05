// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'japanesephoneme.dart';

/// @nodoc
const IID_IJapanesePhoneticAnalyzerStatics =
    '{88ab9e90-93de-41b2-b4d5-8edb227fd1c2}';

class IJapanesePhoneticAnalyzerStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IJapanesePhoneticAnalyzerStatics.fromPtr(super.ptr);

  factory IJapanesePhoneticAnalyzerStatics.from(IInspectable interface) =>
      IJapanesePhoneticAnalyzerStatics.fromPtr(
          interface.toInterface(IID_IJapanesePhoneticAnalyzerStatics));

  List<JapanesePhoneme?> getWords(String input) {
    final result = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, inputHString, result);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<JapanesePhoneme?>.fromPtr(result,
            iterableIid: '{1aad17cb-1829-5236-8aef-0b75f8dfd7a6}',
            creator: JapanesePhoneme.fromPtr)
        .toList();
  }

  List<JapanesePhoneme?> getWordsWithMonoRubyOption(
      String input, bool monoRuby) {
    final result = calloc<COMObject>();
    final inputHString = input.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr input,
                            Bool monoRuby, Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int input, bool monoRuby,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, inputHString, monoRuby, result);

    WindowsDeleteString(inputHString);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<JapanesePhoneme?>.fromPtr(result,
            iterableIid: '{1aad17cb-1829-5236-8aef-0b75f8dfd7a6}',
            creator: JapanesePhoneme.fromPtr)
        .toList();
  }
}
