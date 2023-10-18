// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

part of 'iasyncoperation.dart';

final class _IAsyncOperationBool extends IAsyncOperation<bool> {
  _IAsyncOperationBool.fromPtr(super.ptr);

  late final __IAsyncOperationBoolVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationBoolVtbl>().ref;

  @override
  bool getResults() {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationBoolVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> retValuePtr)>> GetResults;
}

final class _IAsyncOperationDouble extends IAsyncOperation<double> {
  _IAsyncOperationDouble.fromPtr(super.ptr);

  late final __IAsyncOperationDoubleVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationDoubleVtbl>().ref;

  @override
  double getResults() {
    final retValuePtr = calloc<Double>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Double> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationDoubleVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Double> retValuePtr)>> GetResults;
}

final class _IAsyncOperationFloat extends IAsyncOperation<double> {
  _IAsyncOperationFloat.fromPtr(super.ptr);

  late final __IAsyncOperationFloatVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationFloatVtbl>().ref;

  @override
  double getResults() {
    final retValuePtr = calloc<Float>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Float> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationFloatVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Float> retValuePtr)>> GetResults;
}

final class _IAsyncOperationGuid extends IAsyncOperation<Guid> {
  _IAsyncOperationGuid.fromPtr(super.ptr);

  late final __IAsyncOperationGuidVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationGuidVtbl>().ref;

  @override
  Guid getResults() {
    final retValuePtr = calloc<GUID>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationGuidVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<GUID> retValuePtr)>> GetResults;
}

final class _IAsyncOperationInt16 extends IAsyncOperation<int> {
  _IAsyncOperationInt16.fromPtr(super.ptr);

  late final __IAsyncOperationInt16Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationInt16Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationInt16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int16> retValuePtr)>> GetResults;
}

final class _IAsyncOperationInt32 extends IAsyncOperation<int> {
  _IAsyncOperationInt32.fromPtr(super.ptr);

  late final __IAsyncOperationInt32Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationInt32Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationInt32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> GetResults;
}

final class _IAsyncOperationInt64 extends IAsyncOperation<int> {
  _IAsyncOperationInt64.fromPtr(super.ptr);

  late final __IAsyncOperationInt64Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationInt64Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationInt64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>> GetResults;
}

final class _IAsyncOperationLoadMoreItemsResult
    extends IAsyncOperation<LoadMoreItemsResult> {
  _IAsyncOperationLoadMoreItemsResult.fromPtr(super.ptr);

  late final __IAsyncOperationLoadMoreItemsResultVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationLoadMoreItemsResultVtbl>().ref;

  @override
  LoadMoreItemsResult getResults() {
    final retValuePtr = calloc<NativeLoadMoreItemsResult>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<NativeLoadMoreItemsResult> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDart();
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationLoadMoreItemsResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl,
              Pointer<NativeLoadMoreItemsResult> retValuePtr)>> GetResults;
}

final class _IAsyncOperationInspectable<TResult>
    extends IAsyncOperation<TResult> {
  _IAsyncOperationInspectable.fromPtr(super.ptr, {required this.creator});

  late final __IAsyncOperationInspectableVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationInspectableVtbl>().ref;
  final COMObjectCreator<TResult> creator;

  @override
  TResult getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetResults.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null as TResult;
    }

    return creator(retValuePtr);
  }
}

final class __IAsyncOperationInspectableVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      GetResults;
}

final class _IAsyncOperationObject extends IAsyncOperation<Object?> {
  _IAsyncOperationObject.fromPtr(super.ptr);

  late final __IAsyncOperationObjectVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationObjectVtbl>().ref;

  @override
  Object? getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetResults.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }
}

final class __IAsyncOperationObjectVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      GetResults;
}

final class _IAsyncOperationUri extends IAsyncOperation<Uri?> {
  _IAsyncOperationUri.fromPtr(super.ptr);

  late final __IAsyncOperationUriVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationUriVtbl>().ref;

  @override
  Uri? getResults() {
    final retValuePtr = calloc<COMObject>();

    final hr = _vtable.GetResults.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> retValuePtr)>()(lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throwWindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return retValuePtr.toWinRTUri().toDartUri();
  }
}

final class __IAsyncOperationUriVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      GetResults;
}

final class _IAsyncOperationString extends IAsyncOperation<String> {
  _IAsyncOperationString.fromPtr(super.ptr);

  late final __IAsyncOperationStringVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationStringVtbl>().ref;

  @override
  String getResults() {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<IntPtr> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationStringVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<IntPtr> retValuePtr)>> GetResults;
}

final class _IAsyncOperationUint8 extends IAsyncOperation<int> {
  _IAsyncOperationUint8.fromPtr(super.ptr);

  late final __IAsyncOperationUint8Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationUint8Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Uint8>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationUint8Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint8> retValuePtr)>> GetResults;
}

final class _IAsyncOperationUint16 extends IAsyncOperation<int> {
  _IAsyncOperationUint16.fromPtr(super.ptr);

  late final __IAsyncOperationUint16Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationUint16Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint16> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationUint16Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint16> retValuePtr)>> GetResults;
}

final class _IAsyncOperationUint32 extends IAsyncOperation<int> {
  _IAsyncOperationUint32.fromPtr(super.ptr);

  late final __IAsyncOperationUint32Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationUint32Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationUint32Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> GetResults;
}

final class _IAsyncOperationUint64 extends IAsyncOperation<int> {
  _IAsyncOperationUint64.fromPtr(super.ptr);

  late final __IAsyncOperationUint64Vtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationUint64Vtbl>().ref;

  @override
  int getResults() {
    final retValuePtr = calloc<Uint64>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint64> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationUint64Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint64> retValuePtr)>> GetResults;
}

final class _IAsyncOperationWinRTEnum<TResult>
    extends IAsyncOperation<TResult> {
  _IAsyncOperationWinRTEnum.fromPtr(super.ptr, {required this.enumCreator});

  late final __IAsyncOperationWinRTEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationWinRTEnumVtbl>().ref;
  final EnumCreator<TResult> enumCreator;

  @override
  TResult getResults() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = _vtable.GetResults.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>()(
          lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationWinRTEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>> GetResults;
}

final class _IAsyncOperationWinRTFlagsEnum<TResult>
    extends IAsyncOperation<TResult> {
  _IAsyncOperationWinRTFlagsEnum.fromPtr(super.ptr,
      {required this.enumCreator});

  late final __IAsyncOperationWinRTFlagsEnumVtbl _vtable =
      ptr.ref.vtable.cast<__IAsyncOperationWinRTFlagsEnumVtbl>().ref;
  final EnumCreator<TResult> enumCreator;

  @override
  TResult getResults() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = _vtable.GetResults.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<Uint32> retValuePtr)>()(lpVtbl, retValuePtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return enumCreator(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}

final class __IAsyncOperationWinRTFlagsEnumVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer handler)>>
      put_Completed;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> retValuePtr)>>
      get_Completed;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Uint32> retValuePtr)>> GetResults;
}
