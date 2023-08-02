# Overview

The WinRT APIs available in these packages are generated from
[Windows Metadata (WinMD)][metadata_link] files provided by Microsoft. These
metadata files are in the [ECMA-335 specification][ecma_335_link] file format
and can be found on Windows machines under the `%windir%\System32\WinMetadata`
directory.

The metadata extraction and parsing are handled by the separate
[winmd][winmd_link] package.

Not all WinRT APIs are projected. The JSON files located in the
[packages\winrtgen\assets][assets_dir_link] directory are used to determine
which APIs to project.

## Getting Started

To help with managing multiple packages in this repository, this project uses
the [melos][melos_link] package.

Several scripts defined in the [melos.yaml][melos_yaml_link] file can be
utilized for generating, testing, and publishing the packages in this
repository.

To begin, you need to install the `melos` package globally so that it can be
accessed from any location on your system:

```terminal
C:\src\dartwinrt> dart pub global activate melos
```

Once installed, you can start using `melos` commands from your terminal.
For example, to view the list of available scripts, run:

```terminal
C:\src\dartwinrt> melos run
```

## Adding new WinRT APIs

Instead of manually editing the JSON files mentioned earlier, it is recommended
to use the `melos run add-api` command to add a new WinRT API and its
dependencies (if any) into the JSON files.

For example, to add a WinRT object such as
[Windows.Storage.StorageFile][storagefile_link], use `-o` or `--object` option
with the type:

```terminal
C:\src\dartwinrt> melos run add-api -- -o Windows.Storage.StorageFile
```

For adding a WinRT enum or struct, use the `melos run add-api` command without
any arguments to see the options you can use.

## Generating WinRT APIs

To generate the WinRT APIs, run the following command from the project root:

```terminal
C:\src\dartwinrt> melos run generate
```

This script will also format all files under the `packages` directory.

Additionally, you can run the following command to generate the APIs and
simultaneously run the tests for all packages:

```terminal
C:\src\dartwinrt> melos run generate-and-test
```

## Running tests

To run the tests for all packages, use the following command:

```terminal
C:\src\dartwinrt> melos run test:all
```

If you wish to run the tests for a specific package, use the command below and
select the package from the provided list:

```terminal
C:\src\dartwinrt> melos run test
```

## Updating golden Files

The [packages\winrtgen\test\goldens][goldens_dir_link] directory contains
`*.golden` files, which serve as the expected output of the code generation
tool. These files are utilized by the unit tests to verify the correctness of
the generated output.

To update the golden files with the latest generated output, run the following
command from the project root:

```terminal
C:\src\dartwinrt> melos run update-goldens
```

This script will replace the contents of the `*.golden` files with their
original file contents, as defined in the mapping specified in
[packages\winrtgen\lib\src\constants\golden_files.dart][golden_files_dart_link].

**Note**: Whenever you add a new golden test, remember to update the map in the
`golden_files.dart` file.

[assets_dir_link]: https://github.com/dart-windows/dartwinrt/tree/main/packages/winrtgen/assets
[ecma_335_link]: https://www.ecma-international.org/publications-and-standards/standards/ecma-335/
[golden_files_dart_link]: https://github.com/dart-windows/dartwinrt/tree/main/packages/winrtgen/lib/src/constants/golden_files.dart
[goldens_dir_link]: https://github.com/dart-windows/dartwinrt/tree/main/packages/winrtgen/test/goldens
[melos_link]: https://github.com/invertase/melos
[melos_yaml_link]: https://github.com/dart-windows/dartwinrt/tree/main/melos.yaml
[metadata_link]: https://learn.microsoft.com/uwp/winrt-cref/winmd-files
[storagefile_link]: https://learn.microsoft.com/uwp/api/windows.storage.storagefile
[winmd_link]: https://github.com/dart-windows/winmd
