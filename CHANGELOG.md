# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2023-07-11

### Changes

---

Packages with breaking changes:

 - [`windows_ai` - `v0.1.0`](#windows_ai---v010)
 - [`windows_applicationmodel` - `v0.1.0`](#windows_applicationmodel---v010)
 - [`windows_data` - `v0.1.0`](#windows_data---v010)
 - [`windows_devices` - `v0.1.0`](#windows_devices---v010)
 - [`windows_foundation` - `v0.1.0`](#windows_foundation---v010)
 - [`windows_gaming` - `v0.1.0`](#windows_gaming---v010)
 - [`windows_globalization` - `v0.1.0`](#windows_globalization---v010)
 - [`windows_graphics` - `v0.1.0`](#windows_graphics---v010)
 - [`windows_media` - `v0.1.0`](#windows_media---v010)
 - [`windows_networking` - `v0.1.0`](#windows_networking---v010)
 - [`windows_security` - `v0.1.0`](#windows_security---v010)
 - [`windows_storage` - `v0.1.0`](#windows_storage---v010)
 - [`windows_system` - `v0.1.0`](#windows_system---v010)
 - [`windows_ui` - `v0.1.0`](#windows_ui---v010)

Packages with other changes:

 - [`windows_perception` - `v0.0.2`](#windows_perception---v002)
 - [`windows_services` - `v0.0.2`](#windows_services---v002)
 - [`windows_management` - `v0.0.1+3`](#windows_management---v0013)
 - [`windows_web` - `v0.0.1+3`](#windows_web---v0013)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `windows_management` - `v0.0.1+3`
 - `windows_web` - `v0.0.1+3`

---

#### `windows_ai` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_applicationmodel` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_data` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_devices` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_foundation` - `v0.1.0`

 - **REFACTOR**: tweak the conversions from native arrays to Dart Lists ([#300](https://github.com/dart-windows/dartwinrt/issues/300)). ([009e6d15](https://github.com/dart-windows/dartwinrt/commit/009e6d1537e968c659beb1b2d9a4f4ddfaa17a8f))
 - **REFACTOR**: rework `getRestrictedErrorDescription` function ([#298](https://github.com/dart-windows/dartwinrt/issues/298)). ([0c2a7a91](https://github.com/dart-windows/dartwinrt/commit/0c2a7a91d301594c9932a6bb1ec8019a2c394662))
 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `Object?` type arguments in Vectors ([#290](https://github.com/dart-windows/dartwinrt/issues/290)). ([1b9034b7](https://github.com/dart-windows/dartwinrt/commit/1b9034b7663434e31293703260c7a7198ac539c1))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_gaming` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))

#### `windows_globalization` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_graphics` - `v0.1.0`

 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_media` - `v0.1.0`

 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))

#### `windows_networking` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_security` - `v0.1.0`

 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))

#### `windows_storage` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_system` - `v0.1.0`

 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))

#### `windows_ui` - `v0.1.0`

 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))
 - **FEAT**: provide better error messages on `WindowsException`s ([#291](https://github.com/dart-windows/dartwinrt/issues/291)). ([c06493cf](https://github.com/dart-windows/dartwinrt/commit/c06493cf014927c87b5e9783196754280f7815ef))
 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))
 - **BREAKING** **FIX**: getters that return collection objects are now nullable ([#297](https://github.com/dart-windows/dartwinrt/issues/297)). ([6e0c8148](https://github.com/dart-windows/dartwinrt/commit/6e0c8148bfc66fcdaee18c8a8c5a7623bc1154dd))
 - **BREAKING** **FIX**: parameters of type `Uri` and WinRT object are now nullable ([#294](https://github.com/dart-windows/dartwinrt/issues/294)). ([16b1a292](https://github.com/dart-windows/dartwinrt/commit/16b1a2926a6cfba4c5c3279f5893511b5fca6c9c))
 - **BREAKING** **FIX**: some Vector type arguments are now nullable ([#286](https://github.com/dart-windows/dartwinrt/issues/286)). ([36eef7ae](https://github.com/dart-windows/dartwinrt/commit/36eef7ae3ca7321daecec59f60d071246c362f43))
 - **BREAKING** **FEAT**: methods with `out` parameters now return a `Record` ([#299](https://github.com/dart-windows/dartwinrt/issues/299)). ([35ebf6f1](https://github.com/dart-windows/dartwinrt/commit/35ebf6f123509e8710e699fc28652cb5bb09bd66))

#### `windows_perception` - `v0.0.2`

 - **FEAT**(windows_media): add `MediaCapture` APIs ([#301](https://github.com/dart-windows/dartwinrt/issues/301)). ([81584de7](https://github.com/dart-windows/dartwinrt/commit/81584de719d6c7e64bd3d591a1a219bccf17eb13))

#### `windows_services` - `v0.0.2`

 - **FEAT**: support `WinRTStruct` type arguments in Vectors ([#289](https://github.com/dart-windows/dartwinrt/issues/289)). ([486f0de9](https://github.com/dart-windows/dartwinrt/commit/486f0de9e71122e15fcb1fb2933dbc385f5c3718))


## 2023-06-25

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_applicationmodel` - `v0.0.5`](#windows_applicationmodel---v005)
 - [`windows_data` - `v0.0.2`](#windows_data---v002)
 - [`windows_devices` - `v0.0.3`](#windows_devices---v003)
 - [`windows_foundation` - `v0.0.9`](#windows_foundation---v009)
 - [`windows_gaming` - `v0.0.2`](#windows_gaming---v002)
 - [`windows_graphics` - `v0.0.5`](#windows_graphics---v005)
 - [`windows_networking` - `v0.0.2`](#windows_networking---v002)
 - [`windows_storage` - `v0.0.3`](#windows_storage---v003)
 - [`windows_ui` - `v0.0.4`](#windows_ui---v004)
 - [`windows_system` - `v0.0.4+2`](#windows_system---v0042)
 - [`windows_security` - `v0.0.2+3`](#windows_security---v0023)
 - [`windows_ai` - `v0.0.2+2`](#windows_ai---v0022)
 - [`windows_media` - `v0.0.3+2`](#windows_media---v0032)
 - [`windows_globalization` - `v0.0.1+3`](#windows_globalization---v0013)
 - [`windows_management` - `v0.0.1+2`](#windows_management---v0012)
 - [`windows_services` - `v0.0.1+2`](#windows_services---v0012)
 - [`windows_perception` - `v0.0.1+2`](#windows_perception---v0012)
 - [`windows_web` - `v0.0.1+2`](#windows_web---v0012)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

 - `windows_system` - `v0.0.4+2`
 - `windows_security` - `v0.0.2+3`
 - `windows_ai` - `v0.0.2+2`
 - `windows_media` - `v0.0.3+2`
 - `windows_globalization` - `v0.0.1+3`
 - `windows_management` - `v0.0.1+2`
 - `windows_services` - `v0.0.1+2`
 - `windows_perception` - `v0.0.1+2`
 - `windows_web` - `v0.0.1+2`

---

#### `windows_applicationmodel` - `v0.0.5`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_data` - `v0.0.2`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_devices` - `v0.0.3`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_foundation` - `v0.0.9`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_gaming` - `v0.0.2`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_graphics` - `v0.0.5`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_networking` - `v0.0.2`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_storage` - `v0.0.3`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))

#### `windows_ui` - `v0.0.4`

 - **FEAT**: add `toList` extension method to structs ([#279](https://github.com/dart-windows/dartwinrt/issues/279)). ([dd00ee32](https://github.com/dart-windows/dartwinrt/commit/dd00ee32b03d10aa1dcf95805e821921c433a184))


## 2023-06-22

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_ai` - `v0.0.2+1`](#windows_ai---v0021)
 - [`windows_foundation` - `v0.0.8`](#windows_foundation---v008)

---

#### `windows_ai` - `v0.0.2+1`

 - **FIX**: pass the appropriate `doubleType` to `IVectorView` ([#264](https://github.com/dart-windows/dartwinrt/issues/264)). ([4fd3a0b6](https://github.com/dart-windows/dartwinrt/commit/4fd3a0b62a801d2e4f4aac9f5589a0b415124bf1))

#### `windows_foundation` - `v0.0.8`

 - **FEAT**: support `double` types in collections ([#262](https://github.com/dart-windows/dartwinrt/issues/262)). ([78dd2882](https://github.com/dart-windows/dartwinrt/commit/78dd28825f510417c2ca45e98a4c425b5063f3b5))


## 2023-06-20

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_ai` - `v0.0.2`](#windows_ai---v002)

---

#### `windows_ai` - `v0.0.2`

 - **FEAT**(windows_ai): add MachineLearning APIs ([#255](https://github.com/dart-windows/dartwinrt/issues/255)). ([c1c1ecaa](https://github.com/dart-windows/dartwinrt/commit/c1c1ecaa394ff0c7047ff68672ec9f6dcb4c733e))


## 2023-06-18

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_ai` - `v0.0.1+1`](#windows_ai---v0011)
 - [`windows_applicationmodel` - `v0.0.4+1`](#windows_applicationmodel---v0041)
 - [`windows_data` - `v0.0.1+2`](#windows_data---v0012)
 - [`windows_devices` - `v0.0.2+2`](#windows_devices---v0022)
 - [`windows_foundation` - `v0.0.7+1`](#windows_foundation---v0071)
 - [`windows_gaming` - `v0.0.1+1`](#windows_gaming---v0011)
 - [`windows_globalization` - `v0.0.1+2`](#windows_globalization---v0012)
 - [`windows_graphics` - `v0.0.4+1`](#windows_graphics---v0041)
 - [`windows_management` - `v0.0.1+1`](#windows_management---v0011)
 - [`windows_media` - `v0.0.3+1`](#windows_media---v0031)
 - [`windows_networking` - `v0.0.1+1`](#windows_networking---v0011)
 - [`windows_perception` - `v0.0.1+1`](#windows_perception---v0011)
 - [`windows_security` - `v0.0.2+2`](#windows_security---v0022)
 - [`windows_services` - `v0.0.1+1`](#windows_services---v0011)
 - [`windows_storage` - `v0.0.2+1`](#windows_storage---v0021)
 - [`windows_system` - `v0.0.4+1`](#windows_system---v0041)
 - [`windows_ui` - `v0.0.3+1`](#windows_ui---v0031)
 - [`windows_web` - `v0.0.1+1`](#windows_web---v0011)

---

#### `windows_ai` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_applicationmodel` - `v0.0.4+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_data` - `v0.0.1+2`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_devices` - `v0.0.2+2`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_foundation` - `v0.0.7+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_gaming` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_globalization` - `v0.0.1+2`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_graphics` - `v0.0.4+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_management` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_media` - `v0.0.3+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_networking` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_perception` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_security` - `v0.0.2+2`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_services` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_storage` - `v0.0.2+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_system` - `v0.0.4+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_ui` - `v0.0.3+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))

#### `windows_web` - `v0.0.1+1`

 - **DOCS**: update issue tracker links ([#256](https://github.com/dart-windows/dartwinrt/issues/256)). ([a05f5ec7](https://github.com/dart-windows/dartwinrt/commit/a05f5ec70f5e71773f04d7021e1a84d932ca0c21))


## 2023-06-17

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_applicationmodel` - `v0.0.4`](#windows_applicationmodel---v004)
 - [`windows_graphics` - `v0.0.4`](#windows_graphics---v004)
 - [`windows_media` - `v0.0.3`](#windows_media---v003)

---

#### `windows_applicationmodel` - `v0.0.4`

 - **FEAT**(windows_applicationmodel): add `StandardDataFormats` ([#250](https://github.com/dart-windows/dartwinrt/issues/250)). ([97b73390](https://github.com/dart-windows/dartwinrt/commit/97b73390973914fa0cc7cf28683b545ee67c6a98))

#### `windows_graphics` - `v0.0.4`

 - **FEAT**(windows_graphics): add `IDirect3DDevice` interface ([#248](https://github.com/dart-windows/dartwinrt/issues/248)). ([05e44f7a](https://github.com/dart-windows/dartwinrt/commit/05e44f7ab42bc98d4b1cd7ef69f293b33adce152))
 - **FEAT**(windows_graphics): add `DirectXPixelFormat` enum ([#247](https://github.com/dart-windows/dartwinrt/issues/247)). ([2263a10e](https://github.com/dart-windows/dartwinrt/commit/2263a10e713dd63eedd02f5801075e1783b78379))

#### `windows_media` - `v0.0.3`

 - **FEAT**(windows_media): add `VideoFrame` ([#252](https://github.com/dart-windows/dartwinrt/issues/252)). ([49b56864](https://github.com/dart-windows/dartwinrt/commit/49b568642f3846be918b05bff2f9d9fb63c13356))


## 2023-06-04

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_foundation` - `v0.0.7`](#windows_foundation---v007)
 - [`windows_graphics` - `v0.0.3`](#windows_graphics---v003)
 - [`windows_media` - `v0.0.2`](#windows_media---v002)

---

#### `windows_foundation` - `v0.0.7`

 - **FEAT**: add APIs required for `Windows.Media.Ocr` APIs ([#238](https://github.com/dart-windows/dartwinrt/issues/238)). ([82e36141](https://github.com/dart-windows/dartwinrt/commit/82e361415f8839ea7b8f9e927f2a21d02e0bab09))

#### `windows_graphics` - `v0.0.3`

 - **FEAT**: add APIs required for `Windows.Media.Ocr` APIs ([#238](https://github.com/dart-windows/dartwinrt/issues/238)). ([82e36141](https://github.com/dart-windows/dartwinrt/commit/82e361415f8839ea7b8f9e927f2a21d02e0bab09))

#### `windows_media` - `v0.0.2`

 - **FEAT**(windows_media): add OCR APIs ([#241](https://github.com/dart-windows/dartwinrt/issues/241)). ([174d7581](https://github.com/dart-windows/dartwinrt/commit/174d75815d682a01fee7765222848da5e224dc16))


## 2023-06-01

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_applicationmodel` - `v0.0.2`](#windows_applicationmodel---v002)
 - [`windows_applicationmodel` - `v0.0.3`](#windows_applicationmodel---v003)
 - [`windows_foundation` - `v0.0.6`](#windows_foundation---v006)
 - [`windows_system` - `v0.0.3`](#windows_system---v003)
 - [`windows_system` - `v0.0.4`](#windows_system---v004)
 - [`windows_ui` - `v0.0.3`](#windows_ui---v003)

---

#### `windows_applicationmodel` - `v0.0.2`

 - **FEAT**: add some enums required for `Windows.System.Launcher` APIs ([#222](https://github.com/dart-windows/dartwinrt/issues/222)). ([5401d2a8](https://github.com/dart-windows/dartwinrt/commit/5401d2a81b376f229cacc3feab086ffe378b8298))

#### `windows_applicationmodel` - `v0.0.3`

 - **FEAT**(windows_applicationmodel): add some APIs required for `Launcher` ([#226](https://github.com/dart-windows/dartwinrt/issues/226)). ([63a2f027](https://github.com/dart-windows/dartwinrt/commit/63a2f027f4a1a4eb586241d88739ba3c8ae929e1))

#### `windows_foundation` - `v0.0.6`

 - **FEAT**(windows_foundation): add `NativePackageVersion` struct ([#221](https://github.com/dart-windows/dartwinrt/issues/221)). ([d6a4e35c](https://github.com/dart-windows/dartwinrt/commit/d6a4e35c0c79029d08871dd52c10859174ec042e))

#### `windows_system` - `v0.0.3`

 - **FEAT**(windows_system): add some enums required for `Launcher` APIs ([#224](https://github.com/dart-windows/dartwinrt/issues/224)). ([b229f83d](https://github.com/dart-windows/dartwinrt/commit/b229f83d6ee56102628667564fd2540f53cec5e1))

#### `windows_system` - `v0.0.4`

 - **FEAT**(windows_system): add `Launcher` APIs ([#228](https://github.com/dart-windows/dartwinrt/issues/228)). ([018299d7](https://github.com/dart-windows/dartwinrt/commit/018299d70b9168386b3173d32e5336e2a9cdb045))

#### `windows_ui` - `v0.0.3`

 - **FEAT**: add some enums required for `Windows.System.Launcher` APIs ([#222](https://github.com/dart-windows/dartwinrt/issues/222)). ([5401d2a8](https://github.com/dart-windows/dartwinrt/commit/5401d2a81b376f229cacc3feab086ffe378b8298))


## 2023-05-31

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_ui` - `v0.0.2`](#windows_ui---v002)

---

#### `windows_ui` - `v0.0.2`

 - **FEAT**(windows_ui): add Windows UI Automation APIs ([#216](https://github.com/dart-windows/dartwinrt/issues/216)). ([89035f86](https://github.com/dart-windows/dartwinrt/commit/89035f86409c25f56a5b48cb936b4012cb3a183f))
 - **FEAT**(windows_ui): add `MessageDialog` APIs ([#217](https://github.com/dart-windows/dartwinrt/issues/217)). ([1a5479fd](https://github.com/dart-windows/dartwinrt/commit/1a5479fd61c060c510830a1ef9c3730505e0775e))


## 2023-05-29

### Changes

---

Packages with breaking changes:

 - There are no breaking changes in this release.

Packages with other changes:

 - [`windows_data` - `v0.0.1+1`](#windows_data---v0011)
 - [`windows_devices` - `v0.0.2+1`](#windows_devices---v0021)
 - [`windows_foundation` - `v0.0.5`](#windows_foundation---v005)
 - [`windows_globalization` - `v0.0.1+1`](#windows_globalization---v0011)
 - [`windows_security` - `v0.0.2+1`](#windows_security---v0021)

---

#### `windows_data` - `v0.0.1+1`

 - **DOCS**: update <xx>.microsoft.com URLs ([#212](https://github.com/dart-windows/dartwinrt/issues/212)). ([fbdf79f6](https://github.com/dart-windows/dartwinrt/commit/fbdf79f6a4e6fa3991ce6ed59379e260d2b734b3))

#### `windows_devices` - `v0.0.2+1`

 - **DOCS**: fix example link ([#207](https://github.com/dart-windows/dartwinrt/issues/207)). ([9b182ab2](https://github.com/dart-windows/dartwinrt/commit/9b182ab298b02aaf0da4ff9f784218e34740089a))

#### `windows_foundation` - `v0.0.5`

 - **FEAT**: add some structs from Windows.UI namespace ([#211](https://github.com/dart-windows/dartwinrt/issues/211)). ([00ef0456](https://github.com/dart-windows/dartwinrt/commit/00ef0456506298362c67b34d82eed001a4735552))
 - **DOCS**: update <xx>.microsoft.com URLs ([#212](https://github.com/dart-windows/dartwinrt/issues/212)). ([fbdf79f6](https://github.com/dart-windows/dartwinrt/commit/fbdf79f6a4e6fa3991ce6ed59379e260d2b734b3))

#### `windows_globalization` - `v0.0.1+1`

 - **DOCS**: update <xx>.microsoft.com URLs ([#212](https://github.com/dart-windows/dartwinrt/issues/212)). ([fbdf79f6](https://github.com/dart-windows/dartwinrt/commit/fbdf79f6a4e6fa3991ce6ed59379e260d2b734b3))

#### `windows_security` - `v0.0.2+1`

 - **DOCS**: update <xx>.microsoft.com URLs ([#212](https://github.com/dart-windows/dartwinrt/issues/212)). ([fbdf79f6](https://github.com/dart-windows/dartwinrt/commit/fbdf79f6a4e6fa3991ce6ed59379e260d2b734b3))
