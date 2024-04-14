// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'japanesephoneme.dart';

/// @nodoc
const IID_IJapanesePhoneticAnalyzerStatics =
    '{88ab9e90-93de-41b2-b4d5-8edb227fd1c2}';

class IJapanesePhoneticAnalyzerStatics extends IInspectable {
  IJapanesePhoneticAnalyzerStatics.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IJapanesePhoneticAnalyzerStaticsVtbl>().ref;

  final _IJapanesePhoneticAnalyzerStaticsVtbl _vtable;

  factory IJapanesePhoneticAnalyzerStatics.from(IInspectable interface) =>
      interface.cast(IJapanesePhoneticAnalyzerStatics.fromPtr,
          IID_IJapanesePhoneticAnalyzerStatics);

  List<JapanesePhoneme?> getWords(String input) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetWords.asFunction<
        int Function(VTablePointer lpVtbl, int input,
            Pointer<COMObject> result)>()(lpVtbl, input.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<JapanesePhoneme?>.fromPtr(result,
            iterableIid: '{1aad17cb-1829-5236-8aef-0b75f8dfd7a6}',
            tObjectCreator: JapanesePhoneme.fromPtr)
        .toList();
  }

  List<JapanesePhoneme?> getWordsWithMonoRubyOption(
      String input, bool monoRuby) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetWordsWithMonoRubyOption.asFunction<
            int Function(VTablePointer lpVtbl, int input, bool monoRuby,
                Pointer<COMObject> result)>()(
        lpVtbl, input.toHString(), monoRuby, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<JapanesePhoneme?>.fromPtr(result,
            iterableIid: '{1aad17cb-1829-5236-8aef-0b75f8dfd7a6}',
            tObjectCreator: JapanesePhoneme.fromPtr)
        .toList();
  }
}

final class _IJapanesePhoneticAnalyzerStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input,
              Pointer<COMObject> result)>> GetWords;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr input, Bool monoRuby,
              Pointer<COMObject> result)>> GetWordsWithMonoRubyOption;
}
