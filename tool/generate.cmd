@echo off

if "%1"=="-h" goto help
if "%1"=="--help" goto help

echo Loading...

rem Save current directory and start from the dartwinrt\packages\winrtgen folder
pushd %~dp0..\packages\winrtgen
echo.
call dart bin\generate.dart

if "%1"=="--no-test" goto end

:dart_test
echo.
echo Running winrtgen tests...
call dart test
echo.
echo Running windows_ai tests...
cd ..\windows_ai
call dart test
echo.
echo Running windows_applicationmodel tests...
cd ..\windows_applicationmodel
call dart test
echo.
echo Running windows_data tests...
cd ..\windows_data
call dart test
echo.
echo Running windows_devices tests...
cd ..\windows_devices
call dart test
echo.
echo Running windows_foundation tests...
cd ..\windows_foundation
call dart test
echo.
echo Running windows_gaming tests...
cd ..\windows_gaming
call dart test
echo.
echo Running windows_globalization tests...
cd ..\windows_globalization
call dart test
echo.
echo Running windows_graphics tests...
cd ..\windows_graphics
call dart test
echo.
echo Running windows_management tests...
cd ..\windows_management
call dart test
echo.
echo Running windows_media tests...
cd ..\windows_media
call dart test
echo.
echo Running windows_networking tests...
cd ..\windows_networking
call dart test
echo.
echo Running windows_perception tests...
cd ..\windows_perception
call dart test
echo.
echo Running windows_security tests...
cd ..\windows_security
call dart test
echo.
echo Running windows_services tests...
cd ..\windows_services
call dart test
echo.
echo Running windows_storage tests...
cd ..\windows_storage
call dart test
echo.
echo Running windows_system tests...
cd ..\windows_system
call dart test
echo.
echo Running windows_ui tests...
cd ..\windows_ui
call dart test
echo.
echo Running windows_web tests...
cd ..\windows_web
call dart test
echo.

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
