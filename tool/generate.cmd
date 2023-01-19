@echo off

if "%1"=="--help" goto help

echo Loading...

rem Save current directory and start from the dartwinrt\packages\winrtgen folder
pushd %~dp0..\packages\winrtgen
call dart bin\generate.dart

if "%1"=="--no-test" goto end

:dart_test
echo Running winrtgen tests...
call dart test

echo Running windows_foundation package tests...
cd ..\windows_foundation
call dart test

goto end

:help
echo generate -- Auto-generates various Windows Runtime APIs from metadata.
echo.
echo Useful flags
echo  --no-test     Generate all APIs but don't test
echo.
echo Running the command without any flags generates all classes and runs all tests.
echo.

:end
rem Restore old working directory
popd
pause
