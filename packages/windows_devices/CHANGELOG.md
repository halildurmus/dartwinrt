## 0.2.0

> Note: This release has breaking changes.

 - **REFACTOR**: refactor enum projections ([#338](https://github.com/halildurmus/dartwinrt/issues/338)). ([8b2830c6](https://github.com/halildurmus/dartwinrt/commit/8b2830c6c9ffcfe4e5ffe745d65820e33c08dc98))
 - **REFACTOR**: refactor the projection of `PassArray` style array parameters ([#326](https://github.com/halildurmus/dartwinrt/issues/326)). ([ca45f924](https://github.com/halildurmus/dartwinrt/commit/ca45f92440d371b65fbeaba5b36817c46d747b2f))
 - **REFACTOR**: refactor parameter projections ([#325](https://github.com/halildurmus/dartwinrt/issues/325)). ([6774c4f8](https://github.com/halildurmus/dartwinrt/commit/6774c4f8d1e79b886116d951bfe18718921f659d))
 - **FEAT**: the constructors of the struct classes are now `const` ([#331](https://github.com/halildurmus/dartwinrt/issues/331)). ([c0ec409d](https://github.com/halildurmus/dartwinrt/commit/c0ec409d973dd27601bbf3e09e900589043a495d))
 - **FEAT**: support `WinRTStruct` type arguments in `IReference` ([#312](https://github.com/halildurmus/dartwinrt/issues/312)). ([d8468adf](https://github.com/halildurmus/dartwinrt/commit/d8468adf7a373a7ebee48d8f43c7a2d2d87b77df))
 - **BREAKING** **FEAT**: wrap struct fields ([#322](https://github.com/halildurmus/dartwinrt/issues/322)). ([a2094b38](https://github.com/halildurmus/dartwinrt/commit/a2094b386af8660babd95435cb4328dff92d1b1c))

## 0.1.0

> Note: This release has breaking changes.

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/halildurmus/dartwinrt/issues/291)). ([c06493cf](https://github.com/halildurmus/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/halildurmus/dartwinrt/issues/289)). ([486f0de9](https://github.com/halildurmus/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/halildurmus/dartwinrt/issues/297)). ([6e0c8148](https://github.com/halildurmus/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/halildurmus/dartwinrt/issues/286)). ([36eef7ae](https://github.com/halildurmus/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/halildurmus/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/halildurmus/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

## 0.0.3

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/halildurmus/dartwinrt/issues/279)). ([dd00ee32](https://github.com/halildurmus/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

## 0.0.2+2

 - **DOCS**: update issue tracker links ([#256](https://github.com/halildurmus/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/halildurmus/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

## 0.0.2+1

 - **DOCS**: fix example link ([#207](https://github.com/halildurmus/dartwinrt/issues/207)). ([9b182ab2](https://github.com/halildurmus/dartwinrt/commit/9b182ab298b02aaf0da4ff9f784218e34740089a))

## 0.0.2

- Add `DisplayMonitor` class and an example of retrieving all display monitor
  devices (#193)
- Add `Battery` class and an example of getting battery information (#189)

## 0.0.1

- Initial version.
