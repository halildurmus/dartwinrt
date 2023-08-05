## 0.2.0

> Note: This release has breaking changes.

 - **REFACTOR**: refactor enum projections ([#338](https://github.com/dart-windows/dartwinrt/issues/338)). ([8b2830c6](https://github.com/dart-windows/dartwinrt/commit/8b2830c6c9ffcfe4e5ffe745d65820e33c08dc98))
 - **REFACTOR**: refactor the projection of `PassArray` style array parameters ([#326](https://github.com/dart-windows/dartwinrt/issues/326)). ([ca45f924](https://github.com/dart-windows/dartwinrt/commit/ca45f92440d371b65fbeaba5b36817c46d747b2f))
 - **REFACTOR**: refactor parameter projections ([#325](https://github.com/dart-windows/dartwinrt/issues/325)). ([6774c4f8](https://github.com/dart-windows/dartwinrt/commit/6774c4f8d1e79b886116d951bfe18718921f659d))
 - **FEAT**: the constructors of the struct classes are now `const` ([#331](https://github.com/dart-windows/dartwinrt/issues/331)). ([c0ec409d](https://github.com/dart-windows/dartwinrt/commit/c0ec409d973dd27601bbf3e09e900589043a495d))
 - **FEAT**(windows_foundation): support boxing `Uri` objects ([#328](https://github.com/dart-windows/dartwinrt/issues/328)). ([c4ddb4ab](https://github.com/dart-windows/dartwinrt/commit/c4ddb4aba7098ec9e03d65a7f8feb4e35ff396b3))
 - **FEAT**(windows_foundation): add wrapper for `HSTRING` ([#324](https://github.com/dart-windows/dartwinrt/issues/324)). ([d8e3533b](https://github.com/dart-windows/dartwinrt/commit/d8e3533b76a41d35a9a8166e1ae1ba9c373f62e0))
 - **FEAT**: support (Uri, String) and (Object, Object?) key-value pairs in Map ([#319](https://github.com/dart-windows/dartwinrt/issues/319)). ([c72958dd](https://github.com/dart-windows/dartwinrt/commit/c72958dd4b2030c22eeae328cae61367f6193fc5))
 - **FEAT**: support DateTime, Duration, and TextRange type args in Vectors ([#317](https://github.com/dart-windows/dartwinrt/issues/317)). ([8a8ef2a1](https://github.com/dart-windows/dartwinrt/commit/8a8ef2a14bf9c75dfe553312b6d49eeb53f094eb))
 - **FEAT**: support `double` type arguments in `IAsyncOperation` ([#315](https://github.com/dart-windows/dartwinrt/issues/315)). ([c03183ff](https://github.com/dart-windows/dartwinrt/commit/c03183ff0d320f31542ddcd44d816cc35668068f))
 - **FEAT**: support `WinRTStruct` type arguments in `IAsyncOperation` ([#313](https://github.com/dart-windows/dartwinrt/issues/313)). ([a194214f](https://github.com/dart-windows/dartwinrt/commit/a194214f05867ac07813031aefa7412006b43a67))
 - **FEAT**: support `WinRTStruct` type arguments in `IReference` ([#312](https://github.com/dart-windows/dartwinrt/issues/312)). ([d8468adf](https://github.com/dart-windows/dartwinrt/commit/d8468adf7a373a7ebee48d8f43c7a2d2d87b77df))
 - **DOCS**: update docs for the `internal` library ([#346](https://github.com/dart-windows/dartwinrt/issues/346)). ([f71cd951](https://github.com/dart-windows/dartwinrt/commit/f71cd9519990f3e664a4f343040d0802e803a0e0))
 - **DOCS**: fix grammar mistakes in docs ([#340](https://github.com/dart-windows/dartwinrt/issues/340)). ([a420d0d7](https://github.com/dart-windows/dartwinrt/commit/a420d0d7d28288b2589d95a3441758763eac7fa4))
 - **BREAKING** **FEAT**: wrap struct fields ([#322](https://github.com/dart-windows/dartwinrt/issues/322)). ([a2094b38](https://github.com/dart-windows/dartwinrt/commit/a2094b386af8660babd95435cb4328dff92d1b1c))

## 0.1.0

> Note: This release has breaking changes.

 - **REFACTOR**: tweak the conversions from native arrays to Dart Lists ([#300](https://github.com/dart-windows/dartwinrt/issues/300)). ([009e6d15](https://github.com/dart-windows/dartwinrt/commit/009e6d1537e968c659beb1b2d9a4f4ddfaa17a8f))
 - **REFACTOR**: rework `getRestrictedErrorDescription` function ([#298](https://github.com/dart-windows/dartwinrt/issues/298)). ([0c2a7a91](https://github.com/dart-windows/dartwinrt/commit/0c2a7a91d301594c9932a6bb1ec8019a2c394662))
 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `Object?` type arguments in Vectors ([#290](https://github.com/dart-windows/dartwinrt/issues/290)). ([1b9034b7](https://github.com/dart-windows/dartwinrt/commit/1b9034b7663434e31293703260c7a7198ac539c1))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

## 0.0.9

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

## 0.0.8

 - **FEAT**: support `double` types in collections ([#262](https://github.com/dart-windows/dartwinrt/issues/262)). ([78dd2882](https://github.com/dart-windows/dartwinrt/commit/78dd28825f510417c2ca45e98a4c425b5063f3b5))

## 0.0.7+1

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

## 0.0.7

 - **FEAT**: add APIs required for `Windows.Media.Ocr` APIs ([#238](https://github.com/dart-windows/dartwinrt/issues/238)). ([82e36141](https://github.com/dart-windows/dartwinrt/commit/82e361415f8839ea7b8f9e927f2a21d02e0bab09))

## 0.0.6

 - **FEAT**(windows_foundation): add `NativePackageVersion` struct ([#221](https://github.com/dart-windows/dartwinrt/issues/221)). ([d6a4e35c](https://github.com/dart-windows/dartwinrt/commit/d6a4e35c0c79029d08871dd52c10859174ec042e))

## 0.0.5

 - **FEAT**: add some structs from Windows.UI namespace ([#211](https://github.com/dart-windows/dartwinrt/issues/211)). ([00ef0456](https://github.com/dart-windows/dartwinrt/commit/00ef0456506298362c67b34d82eed001a4735552))
 - **DOCS**: update <xx>.microsoft.com URLs ([#212](https://github.com/dart-windows/dartwinrt/issues/212)). ([fbdf79f6](https://github.com/dart-windows/dartwinrt/commit/fbdf79f6a4e6fa3991ce6ed59379e260d2b734b3))

## 0.0.4

- Add `getWindowHandle` helper function to retrieve the window handle of the
  current window (#197)
- `InitializeWithWindow`'s `initialize` method now uses `getWindowHandle` to
  retrieve the window handle of the current window if `hwnd` parameter is
  omitted (#197)

## 0.0.3

- Add `NativeDisplayAdapterId` and `NativeSizeInt32` structs (#193)

## 0.0.2

- `IMap` interface's `empty` constructor now supports creating empty maps for
  the `Guid` and `Object?` key-value pairs.

## 0.0.1

- Initial version.
