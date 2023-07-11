## 0.1.0

> Note: This release has breaking changes.

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

## 0.0.3

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

## 0.0.2+1

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

## 0.0.2

- `StorageFileQueryResult` class now exposes the
  `getMatchingPropertiesWithRanges` method.

## 0.0.1

- Initial version.
