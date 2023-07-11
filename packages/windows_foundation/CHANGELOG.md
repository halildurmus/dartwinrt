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
