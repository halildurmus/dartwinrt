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
