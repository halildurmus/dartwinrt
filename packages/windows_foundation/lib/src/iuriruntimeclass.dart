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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'extensions/extensions.dart';
import 'helpers.dart';
import 'uri.dart';
import 'wwwformurldecoder.dart';

/// @nodoc
const IID_IUriRuntimeClass = '{9e365e57-48b2-4160-956f-c7385120bbfc}';

class IUriRuntimeClass extends IInspectable {
  IUriRuntimeClass.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUriRuntimeClassVtbl>().ref;

  final _IUriRuntimeClassVtbl _vtable;

  factory IUriRuntimeClass.from(IInspectable interface) =>
      interface.cast(IUriRuntimeClass.fromPtr, IID_IUriRuntimeClass);

  String get absoluteUri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_AbsoluteUri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get displayUri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_DisplayUri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get domain {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Domain.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get extension {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Extension.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get fragment {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Fragment.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get host {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Host.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get password {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Password.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get path {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Path.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get query {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Query.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  WwwFormUrlDecoder? get queryParsed {
    final ppWwwFormUrlDecoder = calloc<COMObject>();

    final hr = _vtable.get_QueryParsed.asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> ppWwwFormUrlDecoder)>()(
        lpVtbl, ppWwwFormUrlDecoder);

    if (FAILED(hr)) {
      free(ppWwwFormUrlDecoder);
      throwWindowsException(hr);
    }

    if (ppWwwFormUrlDecoder.isNull) {
      free(ppWwwFormUrlDecoder);
      return null;
    }

    return WwwFormUrlDecoder.fromPtr(ppWwwFormUrlDecoder);
  }

  String get rawUri {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_RawUri.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get schemeName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SchemeName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get userName {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_UserName.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  int get port {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Port.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get suspicious {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Suspicious.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool equals(Uri? pUri) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.Equals.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer pUri,
              Pointer<Bool> value)>()(lpVtbl, pUri.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Uri? combineUri(String relativeUri) {
    final instance = calloc<COMObject>();

    final hr = _vtable.CombineUri.asFunction<
            int Function(VTablePointer lpVtbl, int relativeUri,
                Pointer<COMObject> instance)>()(
        lpVtbl, relativeUri.toHString(), instance);

    if (FAILED(hr)) {
      free(instance);
      throwWindowsException(hr);
    }

    if (instance.isNull) {
      free(instance);
      return null;
    }

    return Uri.fromPtr(instance);
  }
}

final class _IUriRuntimeClassVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AbsoluteUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_DisplayUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Domain;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Extension;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Fragment;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Host;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Password;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Path;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Query;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<COMObject> ppWwwFormUrlDecoder)>> get_QueryParsed;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_RawUri;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SchemeName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_UserName;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Port;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Suspicious;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer pUri,
              Pointer<Bool> value)>> Equals;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr relativeUri,
              Pointer<COMObject> instance)>> CombineUri;
}
